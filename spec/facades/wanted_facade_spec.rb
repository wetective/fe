require 'rails_helper'

RSpec.describe WantedFacade do
  describe '::create_wanted_list' do
    it 'returns a list of wanted persons objects', :vcr do
      wanted = WantedFacade.create_wanted_list[1]
      
      expect(wanted.files).to be_a(String)
      expect(wanted.reward_text).to be_a(String)
      expect(wanted.aliases).to be_an(Array)
      expect(wanted.warning_message).to be_a(String)
      expect(wanted.sex).to be_a(String)
      expect(wanted.scars_and_marks).to be_a(String)
      expect(wanted.caution).to be_a(String)
      expect(wanted.race).to be_a(String)
      expect(wanted.hair).to be_a(String)
      expect(wanted.weight).to be_a(String)
      expect(wanted.description).to be_a(String)
      expect(wanted.title).to be_a(String)
      expect(wanted.uid).to be_a(String)
      expect(wanted.eyes).to be_a(String)
      expect(wanted.status).to be_a(String)
      expect(wanted.subjects).to be_an(Array)
      expect(wanted.dates_of_birth_used).to be_an(Array)
    end
  end
end
