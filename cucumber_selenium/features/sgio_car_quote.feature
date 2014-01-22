Feature: Obtain a quote for a comprehensive car insurance  
  As a car owner
  I would like to enter minimum details
  And obtain a quote to insure my car online

 Scenario Outline: Comprehensive insurance quotation
 	Given I open sgio website 
 	And I click on Get Quote
 	And I click on Western Australia
 	And I click on Car Insurance
 	And I click on Comprehensive
 	And I switch to the new window
 	And I click on I Agree
 	And I enter <postcode> in suburb
 	And I press enter
 	And I enter <start_date> in policy start
  And I press enter
  And I select <year> in year
  And I select <make> in make
  And I select <model> in model
  And I select <shape> in shape
  And I select <engine> in engine
  And I chose the first match


 Examples: 

 |  postcode    | start_date    |  year    |  make     |  model    |  shape         |  engine    |
 |  6112        | 21/01/2014    |  2012    |  Hyundai  |  I40      |  Station wagon |  1.7       |
