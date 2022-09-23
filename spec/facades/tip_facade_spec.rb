require 'rails_helper'

RSpec.describe TipFacade do
  describe '::create_tips' do
    context 'happy path' do
      it 'can create a new tip' do
        tip = TipFacade.create_tip(uid: 1234, description: "This is a test", location: "Denver, CO", user_id: 1)
        require 'pry'; binding.pry 
        
        expect(tip.files).to be_a(String)
        expect(tip.reward).to be_a(String)
        expect(tip.aliases).to be_an(String)
        expect(tip.warning_message).to be_a(String)
        expect(tip.sex).to be_a(String)
        expect(tip.scars_and_marks).to be_a(String)
        expect(tip.caution).to be_a(String)
        expect(tip.race).to be_a(String)
        expect(tip.hair).to be_a(String)
        expect(tip.weight).to be_a(String)
        expect(tip.description).to be_a(String)
        expect(tip.title).to be_a(String)
        expect(tip.uid).to be_a(String)
        expect(tip.eyes).to be_a(String)
        expect(tip.status).to be_a(String)
        expect(tip.subjects).to be_an(Array)
        expect(tip.dates_of_birth_used).to be_an(Array)
      end
    end
    
    context 'sad path' do

    end
  end    
  
  describe '::create_tip'  do
    context 'happy path' do
      it 'returns a single tip by uid as an object with attributes' do
        tip = TipFacade.create_tip("714d720712d940389b85fd1535031e0c")

        expect(tip.files).to be_a(String)
        expect(tip.reward).to be_a(String)
        expect(tip.aliases).to be_an(String)
        expect(tip.warning_message).to be_a(String)
        expect(tip.sex).to be_a(String)
        expect(tip.scars_and_marks).to be_a(String)
        expect(tip.caution).to be_a(String)
        expect(tip.race).to be_a(String)
        expect(tip.hair).to be_a(String)
        expect(tip.weight).to be_a(String)
        expect(tip.description).to be_a(String)
        expect(tip.title).to be_a(String)
        expect(tip.uid).to be_a(String)
        expect(tip.eyes).to be_a(String)
        expect(tip.status).to be_a(String)
        expect(tip.subjects).to be_an(Array)
        expect(tip.dates_of_birth_used).to be_an(Array)
      end
    end
    
    context 'sad path' do
      it 'returns an empty array if the tip status is closed' do
        tip = TipFacade.create_tip("3f5d03cb681c454f8cc324c3303a579d")
        
        expect(tip).to eq []
      end
    end
  end
end
