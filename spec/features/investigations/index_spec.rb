require 'rails_helper'

RSpec.describe 'Investigation index page' do
  it "test", :vcr do
    visit '/investigations'
  end


end
