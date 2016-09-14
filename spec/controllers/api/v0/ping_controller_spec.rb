RSpec.describe Api::V0::PingController, type: :controller do
  describe 'GET /v0/ping' do
    it 'should return Pong' do
      get :index
      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(json_response['message']).to eq 'Pong'
    end
  end
end
