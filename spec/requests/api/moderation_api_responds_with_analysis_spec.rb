RSpec.describe 'POST /api/analyses', type: :request do
  describe 'receives response for correct request' do
    before do
      post'/api/analyses', params: {
    analysis: {
      resource: "https://empire-s3-production.bobvila.com/articles/wp-content/uploads/2020/06/Types-of-Palm-Trees.jpg", 
      category: "image"
        }
      }
    end
    
  end
end