Feature: Adding a new user
  
  As an application user
  So that my attendance information can be retrieved
  I want to be able to register a new user
  

  
Scenario: As an application user I want to be able to log in and create an account
Given I am not authenticated
    When I click "Sign Up" link 
    And I fill in "user_email" with "newstudent@email.com"
    And I fill in "user_password" with "123456
    And I fill in "user_password_confirmation" with "123456"
    Then I should press "Sign up"
    Then I should see "Student Home" page