require 'rails_helper'
describe "the delete a product process" do
  before(:each) do
    visit new_user_registration_path
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => '123456'
    fill_in 'Password confirmation', :with => '123456'
    click_button 'Sign up'
  end
  it "delete an existing product" do
    @test_product = Product.create({:name => 'thing', :price => 1, :country => 'USA'})
    visit product_path(@test_product)
    click_link 'Delete'
    expect(page).to_not have_content 'OK'
  end
end
