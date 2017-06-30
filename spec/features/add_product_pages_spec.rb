require 'rails_helper'

describe "add/edit a product process" do
  it "adds a new product" do
    visit root_path
    click_link 'Add new product'
    fill_in 'Name', :with => 'Chi chon cookies'
    fill_in 'Cost', :with => 4.5
    fill_in 'Country', :with => 'USA'
    click_on 'Submit'
    expect(page).to have_content 'Chi chon cookies'
    click_link 'Edit'
    fill_in 'Name', :with => 'Ding chon cookies'
    click_on 'Submit'
    expect(page).to have_content 'Ding chon cookies'
  end
  it "gives error when nothing is entered" do
    visit new_product_path
    click_on 'Submit'
    expect(page).to have_content 'errors'
  end
end
