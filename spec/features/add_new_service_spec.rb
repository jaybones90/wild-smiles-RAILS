require 'rails_helper'

describe "add new service path" do
  before do
    admin = FactoryGirl.create(:user, :admin => true)
    visit root_path
    click_link "Sign in"
    fill_in "Email", :with => admin.email
    fill_in "Password", :with => admin.password
    click_button "Sign in"
  end
  it "allows an admin to add a new service" do
    visit services_path
    click_on "Add A New Service"
    fill_in "Name", :with => "Skydiving Photo Package"
    fill_in "Description", :with => "Photographer will jump with you and take hi-def photos and video"
    fill_in "Cost", :with => 44.33
    click_on "Create Service"
    expect(page).to have_content("Service Sucessfully Added")
  end
end
