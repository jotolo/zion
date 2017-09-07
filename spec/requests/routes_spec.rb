require 'rails_helper'

RSpec.describe 'Routes', type: :request do
  describe 'GET /routes' do
    it 'return success' do
      get routes_path(passphrase: 'whatever', source: 'whatever')
      expect(response).to have_http_status(200)
    end

    it 'return bad request' do
      get routes_path
      expect(response).to have_http_status(400)
    end
  end
end
