require 'rails_helper'

RSpec.describe InvestigationService do
  describe '::get_investigations' do
    it 'fetches data for investigations', :vcr do
      investigation = InvestigationService.get_investigations[0]

      expect(investigation).to be_a(Hash)
      expect(investigation[:files][0][:url]).to be_a(String)
      expect(investigation[:reward_text]).to be_a(String)
      expect(investigation[:aliases]).to be_an(Array)
      expect(investigation[:warning_message]).to be_a(String)
      expect(investigation[:field_offices]).to be_an(Array)
      expect(investigation[:sex]).to be_a(String)
      expect(investigation[:scars_and_marks]).to be_a(String)
      expect(investigation[:caution]).to be_a(String)
      expect(investigation[:race]).to be_a(String)
      expect(investigation[:hair]).to be_a(String)
      expect(investigation[:weight]).to be_a(String)
      expect(investigation[:description]).to be_a(String)
      expect(investigation[:title]).to be_a(String)
      expect(investigation[:uid]).to be_a(String)
      expect(investigation[:eyes]).to be_a(String)
      expect(investigation[:status]).to be_a(String)
      expect(investigation[:subjects]).to be_an(Array)
      expect(investigation[:dates_of_birth_used]).to be_an(Array)
    end
  end
end
