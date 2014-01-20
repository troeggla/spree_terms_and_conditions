Given(/^I have a product in my cart$/) do
  create(:address)
  create(:free_shipping_method)
  create(:product, :name => "Github Mug")
  visit "/"
  click_link "Github Mug"
  click_button "add-to-cart-button"
end

Given(/^I am at the checkout page$/) do
  click_button "checkout-link"

  address = Spree::Address.last
  fill_in("order_email", :with => "sample@web.com")
  within("#billing") do
    fill_in("order_bill_address_attributes_firstname",
            :with => address.firstname)
    fill_in("order_bill_address_attributes_lastname",
            :with => address.lastname)
    fill_in("order_bill_address_attributes_address1",
            :with => address.address1)
    fill_in("order_bill_address_attributes_address2",
            :with => address.address2)
    fill_in("order_bill_address_attributes_city",
            :with => address.city)
    fill_in("order_bill_address_attributes_zipcode",
            :with => address.zipcode)
    fill_in("order_bill_address_attributes_phone",
            :with => address.phone)
  end
  click_button("Save and Continue")
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I want to finish the checkout without accepting the terms$/) do
  steps %Q{
    When I finish the checkout
  }
end

When(/^I want to finish the checkout and accepting the terms$/) do
  check("order_terms_and_conditions")
  steps %Q{
    When I finish the checkout
  }
end

When(/^I finish the checkout$/) do
  click_button("Save and Continue")
end

Then(/^I should be at the payment page$/) do
  steps %Q{
    Then I should see "Checkout"
    Then I should see "Payment Information"
  }
end