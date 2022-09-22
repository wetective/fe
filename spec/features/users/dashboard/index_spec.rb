require "rails_helper"

RSpec.describe "User Dashboard" do
  it "displays a users tips" do

    user = UserFacade.create_user(name: "cory", email: "email@email.com")
    tip1 = TipFacade.create_tip(uid: 1234, location: "Kansas", description: "it was bad", user_id: user.id.to_i)
    tip2 = TipFacade.create_tip(uid: 5678, location: "Germany", description: "shcetes vette heute", user_id: user.id.to_i)
    tip3 = TipFacade.create_tip(uid: 1234, location: "London", description: "cheerio", user_id: user.id.to_i)
    binding.pry
    tip4 = TipFacade.users_tips(user.id.to_i)
    binding.pry
    visit "/api/v1/users/#{user.id}/dashboard"

    expect(response).to be_successful
    #
    # user_tips = JSON.parse(response.body, symbolize_names: true)
    # user_data = user_tips[:data]
    # binding.pry
  end

end
