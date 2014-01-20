Feature: Automate a repetitive task in a web browser
  In order to save time
  As a manual tester
  I want to uplift my automation skills

 Scenario Outline: Search definitions of words
 	Given I open google home page
 	And I enter <criteria> in the search field
 	And I press enter
 	Then I should see a link from <expected> domain


 Examples:
 | criteria                    |    expected           |
 | Linkedin Herminio Vazquez   |    linkedin           |
 | Planit Software Testing     |    planit.net.au      |