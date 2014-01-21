Feature: Checkout page should include terms and conditions

  In order to purchase a product
  As a customer
  I have to agree to the terms and conditions

  Scenario: Display terms and conditions at checkout page
    Given I have a product in my cart
    And I am at the checkout page
    Then I should see "Terms And Conditions"
    And I should see "I accept the terms and conditions for the website"
    When I want to finish the checkout without accepting the terms
    Then I should see "Terms and conditions must be accepted"
    When I want to finish the checkout and accepting the terms
    Then I should be at the payment page