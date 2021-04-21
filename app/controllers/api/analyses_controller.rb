# frozen_string_literal: true

class Api::AnalysesController < ApplicationController
  
  #??
  before_action :analyze_resource, only: [:create]

  def create
    # creates db migration Analysis?? with
    # data from external AI APIs
    analysis = Analysis.create(analysis_params
                                   .merge!(results: @results,
                                           request_ip: request.remote_ip))
    
    # API output
    # condition to handle errors if there is no responce from AI APIs
    if analysis.persisted?
      render json: analysis
    else
      render json: analysis.errors.full_messages, status: 422
    end

  end

  private

  #takes :analysis data from params, permits all fields (better to reduce scope)
  #used as input to new Analysis class
  def analysis_params
    
    params.require(:analysis).permit!
  end

  # cheks what we selected to analyse, image or text and
  # chooses corresponding AI API
  def analyze_resource
    resource = analysis_params[:resource]
    if analysis_category == :image
      @results = image_analysis(resource)
    elsif analysis_category == :text
      @results = text_analysis(resource)
    end
  end

  # sends data to Monkeylearn AI API (text analysis)
  def text_analysis(text)
    model_id = 'cl_KFXhoTdt' # Profanity & Abuse Detection
    response = Monkeylearn.classifiers.classify(model_id, [text])
    response.body[0]
  end

  # sends data to Clarifai AI API (image analysis)
  def image_analysis(url)
    binding.pry       
    Clarifai::Rails::Detector
      .new(url)
      .image
      .concepts_with_percent
  end

  # takes category from params and converts to symbol 
  def analysis_category
    analysis_params[:category].to_sym
  end
end
