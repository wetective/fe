require 'rails_helper'

RSpec.describe InvestigationFacade do
  describe '::create_investigations', :vcr do
    context 'happy path' do
      xit 'returns a list of investigations as objects with attributes' do
        investigation = InvestigationFacade.create_investigations[2]
        
        expect(investigation.files).to be_a(String)
        expect(investigation.reward).to be_a(String)
        expect(investigation.aliases).to be_an(String)
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
    
    context 'sad path' do

    end
  end    
  
  describe '::create_investigation', :vcr do
    context 'happy path' do
      xit 'returns a single investigation by uid as an object with attributes' do
        investigation = InvestigationFacade.create_investigation("714d720712d940389b85fd1535031e0c")

        expect(investigation.files).to be_a(String)
        expect(investigation.reward).to be_a(String)
        expect(investigation.aliases).to be_an(String)
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
    
    context 'sad path' do
      xit 'returns an empty array if the investigation status is closed' do
        investigation = InvestigationFacade.create_investigation("3f5d03cb681c454f8cc324c3303a579d")
        
        expect(investigation).to eq []
      end
    end
  end
end
