require 'rails_helper'

RSpec.describe InvestigationFacade do
  describe '::create_investigations' do
    it 'returns a list of investigations as objects', :vcr do
      investigation = InvestigationFacade.create_investigations[2]

      expect(investigation.files).to be_a(String)
      expect(investigation.reward_text).to be_a(String)
      expect(investigation.aliases).to be_an(Array)
      expect(investigation.warning_message).to be_a(String)
      expect(investigation.sex).to be_a(String)
      expect(investigation.scars_and_marks).to be_a(String)
      expect(investigation.caution).to be_a(String)
      expect(investigation.race).to be_a(String)
      expect(investigation.hair).to be_a(String)
      expect(investigation.weight).to be_a(String)
      expect(investigation.description).to be_a(String)
      expect(investigation.title).to be_a(String)
      expect(investigation.uid).to be_a(String)
      expect(investigation.eyes).to be_a(String)
      expect(investigation.status).to be_a(String)
      expect(investigation.subjects).to be_an(Array)
      expect(investigation.dates_of_birth_used).to be_an(Array)
    end
  end
end
