require 'rails_helper'

RSpec.describe "User" do 
  it 'exists and has attributes', :vcr do 
    info = {name: "Joe", email: "joe@example.com"}
    user = UserFacade.find_create_user(info)

    expect(user.username).to eq("Joe")
    expect(user.email).to eq("joe@example.com")
  end
end