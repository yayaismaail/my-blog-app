require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http not found' do
      get '/posts/index'
      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'GET /show' do
    it 'returns http not found' do
      get '/posts/show'
      expect(response).to have_http_status(:not_found)
    end
  end
end
