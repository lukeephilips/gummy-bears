require 'rails_helper'
describe "the edit a product process" do
  before(:each) do
    visit new_user_registration_path
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => '123456'
    fill_in 'Password confirmation', :with => '123456'
    click_button 'Sign up'
  end
  it "edit an existing product" do
    @test_product = Product.create({:name => 'thing', :price => 1, :country => 'USA'})
    visit product_path(@test_product)
    click_link 'Edit'
    fill_in 'Name', :with => 'yay'
    click_on 'Update Product'
    expect(page).to have_content 'yay'
  end

  it "gives error when no name is entered" do
    @test_product = Product.create({:name => 'thing', :price => 1, :country => 'USA'})
    visit product_path(@test_product)
    click_link 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content "Name can't be blank"
  end
end
