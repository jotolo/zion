require 'rails_helper'

RSpec.describe Route, type: :model do
  it 'should validate required fields' do
    [:passphrase, :source, :start_node, :end_node, :start_time, :end_time].each do |attr|
      should validate_presence_of attr
    end
  end
end
