require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /show' do
    it 'returns http not found' do
      get '/users/show'
      expect(response).to have_http_status(:not_found)
    end

    it 'returns http no content when not acceptable' do
      user = User.create(name: 'Example User')
      get '/users/show', params: { id: user.id }, headers: { 'Accept' => 'application/json' }
      expect(response).to have_http_status(:no_content)
    end
  end
end
