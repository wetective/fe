require 'rails_helper'

RSpec.describe "logging in" do 
    describe 'if a user is not logged in' do
        it 'can click the login button and be redirected to the login page' do
            visit root_path
            click_link('Login')
            expect(current_path).to eq login_path
        end

        describe 'happy path' do 
            it 'can fill out the email and password and be redirected to the dashboard
        when the login is successful' do
            visit login_path
            

        end



    end
end
