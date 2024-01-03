@regression
Feature: As a user,
  I should register successfully
  I should see error message while register with existing email
  I should Place Order: Register while Checkout
  I should Place Order: Register before Checkout
  I should Place Order: Login before Checkout
  I should verify address details in checkout page

  Background:
    Given I am on homepage and verify the homepage URL

  @smoke @sanity
    #Test Case 1: Register User
  Scenario: User should register successfully
    When I click on header menu option Signup "Signup / Login"
    Then I should see the login page text "New User Signup!"
    And I send name "Nandini" and email "primetesting" to signup
    And I click on button "Signup"
    Then I should see text "ENTER ACCOUNT INFORMATION"
    And I fill all details in signup page "Mrs" "Testing123" "11" "March" "1999" "Nandini" "Prajapati" "SetuKrupa" "Shahibaug" "India" "Gujarat" "Ahmedabad" "380004" "9825098250"
    And I click on news letter subscription check box
    And I click on special offers check box
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Nandini"
    And I click on header menu option Deleted Account "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    And I click on continue button after deleting account

  @smoke @sanity
    #Test Case 5: Register User with existing email
  Scenario: User should see error message while register with existing email
    When I click on header menu option Signup "Signup / Login"
    Then I should see the login page text "New User Signup!"
    And I send name "Nandini" to name field in signup
    And I send email "PrimeTesting001@gmail.com" to email field in signup
    And I click on "Signup" button
    Then I should see error message "Email Address already exist!"

  @smoke @sanity
#  Test Case 14: Place Order: Register while Checkout
  Scenario: User should place the order : Register while checkout
    When I add product "Blue Top" to the cart
    And I click View Cart button
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I click on register link in the checkout popup
    And I send name "Nandini" and email "primetesting" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Miss" "Testing123" "11" "March" "1990" "Nandini" "Prajapati" "SetuKrupa" "Shahibaug" "India" "Gujarat" "Ahmedabad" "380004" "9825098250"
    And I click on news letter subscription check box
    And I click on special offers check box
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Nandini"
    And I click on header menu option Cart "Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "Nandini Prajapati" "454545454545454" "102" "12" and "2026"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option Deleted Account "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account

  @smoke @sanity
#  Test Case 15: Place Order: Register before Checkout
  Scenario: User should place the order : Register before checkout
    When I click on header menu option Signup "Signup / Login"
    And I send name "Nandini" and email "primetesting" to signup
    And I click on button "Signup"
    Then I should see text "ENTER ACCOUNT INFORMATION"
    And I fill all details in signup page "Miss" "Testing123" "11" "March" "1999" "Nandini" "Prajapati" "SetuKrupa" "Shahibaug" "India" "Gujarat" "Ahmedabad" "380004" "9825098250"
    And I click on news letter subscription check box
    And I click on special offers check box
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Nandini"
    And I add product "Blue Top" to the cart
    And I click View Cart button
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "Nandini Prajapati" "454545454545454" "102" "12" and "2026"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option Deleted Account "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account

  @sanity
#  Test Case 23: Verify address details in checkout page
  Scenario: User should Verify address details in checkout page
    When I click on header menu option Signup "Signup / Login"
    And I send name "Nandini" and email "primetesting" to signup
    And I click on button "Signup"
    Then I should see text "ENTER ACCOUNT INFORMATION"
    And I fill all details in signup page "Miss" "Testing123" "11" "March" "1999" "Nandini" "Prajapati" "SetuKrupa" "Shahibaug" "India" "Gujarat" "Ahmedabad" "380004" "9825098250"
    And I click on news letter subscription check box
    And I click on special offers check box
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Nandini"
    And I add product "Blue Top" to the cart
    And I click View Cart button
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    Then  Verify that the delivery address is same address filled at the time registration of  "SetuKrupa"
    Then Verify that the billing address is same address filled at the time registration of account "SetuKrupa"
    And I click on header menu option Deleted Account "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account

