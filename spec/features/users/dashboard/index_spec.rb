require "rails_helper"

RSpec.describe "User Dashboard" do
  before(:each) do
    @data = JSON.parse(File.read("spec/fixtures/dashboard_tip_response.json"), symbolize_name: true)

    allow(TipService).to receive(:find_tips).and_return(@data)
    # allow(ApplicationController).to receive(:current_user).and_return(1)
  end

  it "displays a users tips" do
    visit "/users/1/dashboard"
  end

end
