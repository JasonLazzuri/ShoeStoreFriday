require 'spec_helper'

describe('Store', {:type => :feature}) do
  it('on click of store name, displays store details') do
    test_store = Store.create({:name => "Nike Outlet"})
    visit('/')
    click_link("View Stores")
    click_on("Nike Outlet")
    expect(page).to have_content('Stores')
  end

  it('will edit the name of the store') do
    test_store = Store.create({:name => "Nike Outlet"})
    visit("/store/#{test_store.id}")
    fill_in("name", :with => "Puma Outlet")
    click_button("Update Store Name")
    expect(page).to have_content('Puma Outlet')
  end

  it('will delete the store') do
    test_store = Store.create({:name => "Nike Outlet"})
    visit("/store/#{test_store.id}")
    click_button("Delete Store")
    expect(page).to have_content('Welcome!')
  end

  it('add brand to the store') do
    test_store = Store.create({:name => "Nike Outlet"})
    test_brand = Brand.create({:name => "shoe", :price => 50})
    visit("/store/#{test_store.id}")
    select 'Shoe', from: "brand_id"
    click_button("Submit")
    expect(page).to have_content('Nike Outlet')
  end
end
