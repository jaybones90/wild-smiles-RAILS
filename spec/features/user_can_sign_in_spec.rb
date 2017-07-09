require 'rails_helper'


describe "user sign in path" do
  it "allows an exisiting user to sign in" do
    user = FactoryGirl.create(:user, :password => "apple", :password_confirmation => "apple")
    visit signin_path
    click_link "Sign in"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
    expect(page).to have_content("You've Successfully Signed In")
  end
end
