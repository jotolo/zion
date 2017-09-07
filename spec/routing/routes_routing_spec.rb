require 'rails_helper'

RSpec.describe RoutesController, type: :routing do
  describe 'routing' do

    it 'routes to #show' do
      expect(:get => '/routes').to route_to('routes#show')
    end

    it 'routes to #create' do
      expect(:post => '/routes').to route_to('routes#create')
    end
  end
end
