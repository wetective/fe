require 'rails_helper'

RSpec.describe 'Investigation index page' do
  xit "checks to see if there are investigations displayed", :vcr do
    visit '/investigations'

    expect(page).to have_css("img[src*='https://www.fbi.gov/wanted/seeking-info/vandalism-investigation/@@images/image']")
  end

  xit "checks to see if there is a button to each investigations show page", :vcr do
    visit '/investigations'

    first(:button, "See More Details").click
    expect(current_path).to eq("/investigations/11954299cdfd402ca45449793d6e24c5")
  end
end
