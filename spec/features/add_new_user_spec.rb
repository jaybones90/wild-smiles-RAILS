require 'rails_helper'

describe "add new user" do
  it "add a new user to the site" do
    user = FactoryGirl.build(:user, :password => "apple", :password_confirmation => "apple")
    visit root_path
    click_link "Sign up"
    fill_in "User Name", :with => user.user_name
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    fill_in "Confirm Password", :with => user.password_confirmation
    click_on "Sign Up"
    expect(page).to have_content("New User Successfully Created")
  end
end
