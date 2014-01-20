require 'rubygems'
require 'watir-webdriver'
require 'watir-webdriver/wait'


Given(/^I open google home page$/) do
	$browser ||= Watir::Browser.new
	$browser.driver.manage.timeouts.implicit_wait = 3
	$browser.goto 'http://google.com.au'  
end

Given(/^I enter (.*?) in the search field$/) do |person|
  $browser.text_field(:name => 'q').set person  
end

Given(/^I press enter$/) do
  $browser.send_keys :enter  
end

Then(/^I should see a link from (.*?) domain$/) do |domain_name|
	links = $browser.elements(:css, "h3.r > a")
	assert links.size > 0, "Search results should be present"
	if links.size > 0		
  	assert links.first.attribute_value(:href).include?(domain_name), "Link to domain missing"
  end
end

at_exit do
	$browser.close
end