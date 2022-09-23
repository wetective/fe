require 'rails_helper'

RSpec.describe "OAuth Login with Google" do 
  context 'happy path' do
    before(:each) do
      OmniAuth.config.test_mode = true
    end
    xit 'redirects and creates a new user' do
      OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
                                                                           :provider => 'google',
                                                                           :uid => '123545',
                                                                           :info => {
                                                                             :email => 'me@example.com',
                                                                             :name => 'Bono'
                                                                           },
                                                                           :credentials => {
                                                                             :token => '555'
                                                                           }
                                                                         })
      visit '/auth/google_oauth2/callback'
      expect(current_path).to eq("/users/#{User.id}/dashboard")
      expect(User.last.email).to eq('me@example.com')
    end
  end
end