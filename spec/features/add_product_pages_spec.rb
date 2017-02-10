require 'rails_helper'

describe "the add a product process" do
  before(:each) do
    visit new_user_registration_path
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => '123456'
    fill_in 'Password confirmation', :with => '123456'
    click_button 'Sign up'
  end
  it "adds a new product" do
    visit products_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Cheese'
    click_on 'Create Product'
    expect(page).to have_content 'Cheese'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end
