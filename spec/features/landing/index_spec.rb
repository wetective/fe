require 'rails_helper'

RSpec.describe 'The Landing Index Page' do
  describe 'if a user is not logged in' do
    it 'has a navigation bar with the logo, home button, register button, and log in button' do
      visit root_path

      within '#header-bar' do
        expect(page).to have_css("img[src*='/assets/wetective-logo']")
        expect(page).to have_link(href: root_path)
        expect(page).to have_link('Sign Up', href: register_path) # Add href to path when available
        expect(page).to have_link('Login', href: login_path) # Add href to path when available
      end
    end
  end

  describe 'if a user is logged in' do
    it 'has a navigation bar with the logo, home button, register button, and log in button' do
      attrs = {
        attributes: { 
          email: "blakesaylor@email.com" 
        },
        id: 123
      }

      user1 = UserPoro.new(attrs)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)    

      visit root_path

      within '#header-bar' do
        expect(page).to have_css("img[src*='/assets/wetective-logo']")
        expect(page).to have_link(href: root_path)
        expect(page).to have_link('Map', href: user_locations_path) 
        expect(page).to have_link('Browse', href: user_investigations_path(user1.id)) 
        expect(page).to have_link('Logout', href: logout_path) 
      end
    end

    it 'displays a flash message when a user logs out' do
      attrs = {
        attributes: { 
          email: "blakesaylor@email.com" 
        },
        id: 123
      }

      user1 = User.new(attrs)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)    

      visit root_path

      click_link "Logout"

      expect(current_path).to eq root_path
      expect(page).to have_content "Successfully Logged Out"
    end
  end
end