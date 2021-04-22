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
        #stub_request(:post, "https://api.clarifai.com/v2/models/d16f390eb32cad478c7ae150069bd2c6/outputs")
        #.to_return(status: 200, body: expected_response) 
        stub_request(:post, "https://api.clarifai.com/v2/models/d16f390eb32cad478c7ae150069bd2c6/outputs").
         with(
           body: "{\"inputs\":[{\"data\":{\"image\":{\"url\":\"https://empire-s3-production.bobvila.com/articles/wp-content/uploads/2020/06/Types-of-Palm-Trees.jpg\"}}}]}",
           headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Authorization'=>'Key 526dcff3c06e430cbcf4e807199062ae',
          'Content-Length'=>'142',
          'Host'=>'api.clarifai.com',
          'User-Agent'=>'rest-client/2.1.0.rc1 (linux-gnu x86_64) ruby/2.5.1p57'
           }).
         to_return(status: 200, body: expected_response , headers: {})
        post '/api/analyses', params: params 
      end
      
      it 'whatever one' do
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