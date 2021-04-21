RSpec.describe 'POST /api/analyses', type: :request do
  describe 'receives response for correct request' do
    
    params = {      
        analysis: {
          resource: "https://empire-s3-production.bobvila.com/articles/wp-content/uploads/2020/06/Types-of-Palm-Trees.jpg", 
          category: "image"
        }
      }
    

    before do
      post '/api/analyses', params: params   
    end

    it '123' do
      expect(responce_json["category"]).to eq "image"
    end

#let(:expected_response) do
#  file_fixture("image_responce.json").read.as_json
#end

#   expect(JSON.parse(responce.body)).to eq expected_response

  end
end