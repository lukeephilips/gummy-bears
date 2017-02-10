require 'rails_helper'
describe "the delete a product process" do
  it "delete an existing product" do
    @test_product = Product.create({:name => 'thing', :price => 1, :country => 'USA'})
    visit product_path(@test_product)
    click_link 'Delete'
    expect(page).to_not have_content 'OK'
  end
end
