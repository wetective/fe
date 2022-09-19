require 'rails_helper'

RSpec.describe Investigation do
  it 'exists and has attributes' do
    data = JSON.parse(File.read('spec/fixtures/fbi_investigations_response.json'), symbolize_names: true)[:items][0]

    investigation = Investigation.new(data)
    
    expect(investigation).to be_a(Investigation)
    expect(investigation.files).to eq("https://www.fbi.gov/wanted/wcc/christopher-c-gardner/download.pdf")
    expect(investigation.reward_text).to eq("The FBI is offering a reward of up to $10,000 for information leading to the arrest of Christopher Gardner.")
    expect(investigation.aliases).to eq("Chris Gardner", "Christopher Charles Gardner")
    expect(investigation.warning_message).to eq("SHOULD BE CONSIDERED AN INTERNATIONAL FLIGHT RISK.")
    expect(investigation.field_offices).to eq ["milwaukee"]
    expect(investigation.sex).to eq("Male")
    expect(investigation.scars_and_marks).to eq("Gardner may have scars on the left side of his chin and on his left forearm.")
    expect(investigation.caution).to eq("<p>Christopher C. Gardner is wanted for his alleged participation in a wire fraud scheme and the transportation of a stolen motor vehicle in foreign commerce. It is alleged that in March 2001, Gardner burglarized a business in Milwaukee, Wisconsin, and stole a rare 1938 Talbot Lago T150C-SS “Teardrop” Coupe motor vehicle, chassis #90108. The vehicle is one of only approximately 16 such vehicles ever made. Gardner allegedly shipped the vehicle to Switzerland in 2006, had it restored in France, and in 2015 sold it to a buyer in the United States for $7.6 million. <br /><br /></p>\r\n<p>On May 29, 2019, Gardner was indicted on 4 counts of wire fraud and 1 count of transportation of stolen motor vehicle in foreign commerce in the United States District Court, Eastern District of Wisconsin, and a federal warrant was issued for his arrest. In June 2021, Gardner was arrested in Italy, placed on house arrest, and fled in November 2021. His whereabouts remain unknown. </p>")
    expect(investigation.race).to eq("white")
    expect(investigation.hair).to eq("gray")
    expect(investigation.weight).to eq("175 pounds")
    expect(investigation.description).to eq("Wire Fraud; Transportation of Stolen Motor Vehicle in Foreign Commerce")
    expect(investigation.title).to eq("CHRISTOPHER C. GARDNER")
    expect(investigation.uid).to eq("3f5d03cb681c454f8cc324c3303a579d")
    expect(investigation.eyes).to eq("blue")
    expect(investigation.status).to eq("captured")
    expect(investigation.subjects).to eq ["White-Collar Crime"]
    expect(investigation.dates_of_birth_used).to eq ["July 8, 1955", "July 8, 1954"]
  end
end
