require 'rails_helper'

RSpec.describe 'Investigation index page' do
  it "test", :vcr do
    visit '/investigations'
    # save_and_open_page
    expect(page).to have_content("https://www.fbi.gov/wanted/seeking-info/vandalism-investigation/@@screenshot.gif")
  end


end
