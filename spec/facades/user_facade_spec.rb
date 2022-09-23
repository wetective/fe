require 'rails_helper'

RSpec.describe UserFacade do 
  xit 'creates poro for create user', :vcr do 
    info = {name: "Joe", email: "joe@example.com"}
    user = UserFacade.find_or_create(info)

    expect(user).to be_a(User)
    expect(user.username).to eq("Joe")
    expect(user.email).to eq("joe@example.com")
  end

  xit 'creates poro for all users', :vcr do 
    users = UserFacade.all_users 

    expect(users.first).to be_a(User)
  end

  xit 'creates poro for one user', :vcr do 
    user = UserFacade.get_user(2)

    expect(user.id).to eq("2")
  end
end