Feature: Adding a new course
  
  As a student
  So that track my attendance for a class
  I want to be able to add a new course
  
Scenario: As a student I want to be able to navigate from dashboard to the new course form
  Given I am on the dashboard page
  When I click on the "View Courses" link
  Then I should be on the "Listing Courses" page
  When I click on the "Add Course" link
  Then I should be on the "New Course Enrollment" page
  And I should see the "Name" field