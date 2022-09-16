require 'rails_helper'

RSpec.describe 'The Landing Index Page' do
  describe 'if a user is not logged in' do
    it 'has a navigation bar with the logo, home button, register button, and log in button' do
      visit root_path

      within '#header-bar' do
        expect(page).to have_css("img[src*='/assets/wetective-logo']")
        expect(page).to have_link('Home', href: root_path)
        expect(page).to have_link('Register User') # Add href to path when available
        expect(page).to have_link('Log In') # Add href to path when available
      end
    end

    it 'has a link to view active cases' do
      visit root_path
      
      within '#active-cases-section' do
        expect(page).to have_link('View Active Cases', investigations_path) 
      end
    end

    it 'has buttons to submit tips for fugitives or missing persons' do
      visit root_path

      within '#investigations-most-wanted-section' do
        within '#investigations-most-wanted-left' do
          expect(page).to have_button("Submit a Tip for a Missing Person") # Add href to path when avaialble
        end

        within '#investigations-most-wanted-right' do
          expect(page).to have_button("Submit a Tip for a Fugitive") # Add href to path when avaialble
        end
      end
    end

    it 'has a button to Explore Cases' do
      visit root_path

      within '#landing-map-right-section' do
        expect(page).to have_button('Explore Cases') # Add href to path when available
      end
    end
  end
end
