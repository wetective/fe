require 'rails_helper'

RSpec.describe 'Investigations Show Page' do
  it 'displays information for a specific investigation by id', :vcr do
    visit "/investigations/#{'714d720712d940389b85fd1535031e0c'}"

    expect(page).to have_content("WANTED: MONA RENEE VALLO")
    expect(page).to have_content("Alias: Mona Renee Jackson")
    expect(page).to have_content("Reward: The FBI is offering a reward of up to $5,000 for information leading to the arrest and conviction of the person or persons responsible for the death of Mona Renee Vallo.")
    expect(page).to have_content("Seeking Information, Indian Country")
    expect(page).to have_content("Caution:")
    expect(page).to have_content("Description: Deceased Individual\r Laguna Pueblo, New Mexico\r March 9, 2022")
    expect(page).to have_content("Date of Birth Used: July 24, 1965")
    expect(page).to have_content("Sex: Female")
    expect(page).to have_content("Status: na")
    expect(page).to have_content("Race: Native")
    expect(page).to have_content("Hair Color: black")
    expect(page).to have_content("Eye Color: brown")
    expect(page).to have_content("Weight: 140 pounds")
    expect(page).to have_content("Scars and Marks:")
    expect(page).to have_content("https://www.fbi.gov/wanted/seeking-info/mona-renee-vallo/download.pdf")
  end
end
