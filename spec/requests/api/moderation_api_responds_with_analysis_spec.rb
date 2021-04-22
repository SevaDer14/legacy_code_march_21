RSpec.describe 'POST /api/analyses', type: :request do
  let(:expected_response) do
    file_fixture('image_responce.json').read
  end
  describe 'receives response for correct request' do
    
    params = {      
        analysis: {
          resource: "https://empire-s3-production.bobvila.com/articles/wp-content/uploads/2020/06/Types-of-Palm-Trees.jpg", 
          category: "image"
        }
      } 
      before do
        stub_request(:get, "https://api.clarifai.com/v2/models/d16f390eb32cad478c7ae150069bd2c6/outputs")
        .to_return(status: 200, body: expected_response) 
        post '/api/analyses', params: params 
      end
      
      it 'whatever' do
        expect(response).to have_http_status 200
      end

   

    it 'it shows image moderation response' do
      expect(JSON.parse(response.body)).to eq expected_response
    end



#let(:expected_response) do
#  file_fixture("image_responce.json").read.as_json
#end

#  expect(response.body).to eq expected_response

  end
end