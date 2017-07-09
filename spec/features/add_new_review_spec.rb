require 'rails_helper'

describe "add new comment path" do
  before do
    user = FactoryGirl.create(:user, :admin => true)
    visit root_path
    click_link "Sign in"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
    visit services_path
    click_on "Add A New Service"
    fill_in "Name", :with => "Skydiving Photo Package"
    fill_in "Description", :with => "Photographer will jump with you and take hi-def photos and video"
    fill_in "Cost", :with => 44.33
    click_on "Create Service"
  end
  it "will allow an authenticated user to enter a comment" do
    visit services_path
    save_and_open_page
    click_link "Skydiving Photo Package"
    click_link "Add A Review"
    fill_in "Author", :with => "Smokey The Bear"
    fill_in "Review", :with => "Only you can help stop forest fires!"
    click_on "Create Review"
    expect(page).to have_content("Review Added")
  end
end
