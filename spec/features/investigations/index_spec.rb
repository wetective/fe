require 'rails_helper'

RSpec.describe 'Investigation index page' do
  it "test" do
    visit '/investigations'
    
    expect(page).to have_content("https://www.fbi.gov/wanted/seeking-info/vandalism-investigation/@@screenshot.gif")
  end


end
