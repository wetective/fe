require 'rails_helper'

RSpec.describe 'Investigations Show Page' do
  it 'displays information for a specific investigation by id', :vcr do
    visit "/investigations/#{'3f5d03cb681c454f8cc324c3303a579d'}"

    expect(page).to have_content("https://www.fbi.gov/wanted/wcc/christopher-c-gardner/download.pdf")
    expect(page).to have_content("The FBI is offering a reward of up to $10,000 for information leading to the arrest of Christopher Gardner.")
    expect(page).to have_content("Chris Gardner", "Christopher Charles Gardner")
    expect(page).to have_content("SHOULD BE CONSIDERED AN INTERNATIONAL FLIGHT RISK.")
    expect(page).to have_content("milwaukee")
    expect(page).to have_content("Male")
    expect(page).to have_content("Gardner may have scars on the left side of his chin and on his left forearm.")
    expect(page).to have_content("<p>Christopher C. Gardner is wanted for his alleged participation in a wire fraud scheme and the transportation of a stolen motor vehicle in foreign commerce. It is alleged that in March 2001, Gardner burglarized a business in Milwaukee, Wisconsin, and stole a rare 1938 Talbot Lago T150C-SS “Teardrop” Coupe motor vehicle, chassis #90108. The vehicle is one of only approximately 16 such vehicles ever made. Gardner allegedly shipped the vehicle to Switzerland in 2006, had it restored in France, and in 2015 sold it to a buyer in the United States for $7.6 million. <br /><br /></p>\r\n<p>On May 29, 2019, Gardner was indicted on 4 counts of wire fraud and 1 count of transportation of stolen motor vehicle in foreign commerce in the United States District Court, Eastern District of Wisconsin, and a federal warrant was issued for his arrest. In June 2021, Gardner was arrested in Italy, placed on house arrest, and fled in November 2021. His whereabouts remain unknown. </p>")
    expect(page).to have_content("white")
    expect(page).to have_content("gray")
    expect(page).to have_content("175 pounds")
    expect(page).to have_content("Wire Fraud; Transportation of Stolen Motor Vehicle in Foreign Commerce")
    expect(page).to have_content("CHRISTOPHER C. GARDNER")
    expect(page).to have_content("3f5d03cb681c454f8cc324c3303a579d")
    expect(page).to have_content("blue")
    expect(page).to have_content("captured")
    expect(page).to have_content("White-Collar Crime")
    expect(page).to have_content("July 8, 1955", "July 8, 1954")
  end
end
