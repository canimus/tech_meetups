Feature: Automate a repetitive task in a web browser
  In order to save time
  As a manual tester
  I want to uplift my automation skills

 Scenario: Search definitions of words
 	Given I open google home page
 	And I enter Linkedin Herminio Vazquez in the search field
 	And I press enter
 	Then I should see a link from linkedin domain
