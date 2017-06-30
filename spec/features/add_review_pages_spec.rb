require 'rails_helper'

describe "add a review process" do
  it "adds a new Review" do
    product = Product.create(:name => 'cookies', :cost => 4, :country => "USA")
    visit product_path(product)
    click_link "Add Review"
    fill_in 'Author', :with => 'Arya'
    fill_in 'Content', :with => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
    fill_in 'Rating', :with => 3
    click_on 'Submit'
    expect(page).to have_content 'Arya'
  end

  it "gives error when nothing is entered" do
    product = Product.create(:name => 'cookies', :cost => 4, :country => "USA")
    visit product_path(product)
    click_link "Add Review"
    click_on 'Submit'
    expect(page).to have_content 'errors'
  end
end
