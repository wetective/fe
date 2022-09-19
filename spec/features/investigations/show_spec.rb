require 'rails_helper'

RSpec.describe 'Investigations Show Page' do
  it 'displays information for a specific investigation by id', :vcr do
    visit '/investigations'

    expect(page).to have_content('hello')
  end
end
