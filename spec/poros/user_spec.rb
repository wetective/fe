require 'rails_helper'

RSpec.describe "User" do 
  xit 'exists and has attributes', :vcr do 
    info = {name: "Joe", email: "joe@example.com"}
    user = UserFacade.find_or_create(info)

    expect(user.username).to eq("Joe")
    expect(user.email).to eq("joe@example.com")
  end
end