require 'rubygems'
require 'watir-webdriver'
require 'watir-webdriver/wait'


Given(/^I open sgio website$/) do
	$browser ||= Watir::Browser.new
	$browser.driver.manage.timeouts.implicit_wait = 2
	$browser.goto 'http://sgio.com.au'  
end

Given(/I click on (.*?)$/) do |target|
	mapping = {
		"Get Quote" => "home-quote-launch",
		"Western Australia" => "quote-launch_wa",
		"Car Insurance" => "quote-launch_wa_car-insurance",
		"Comprehensive" => "quote-launch_wa_car-insurance_comprehensive",
		"I Agree" => "motor_termsOfUse_accept"
	}

	$browser.a(id: mapping.values_at(target).first).click
end

Given(/I enter (.*?) in (.*?)$/) do |value, target| 
	mapping = {
		"suburb" => "motor_vehicleDetails1_suburbPostcode",
		"policy start" => "motor_vehicleDetails1_startDate"
	}

	$browser.input(id: mapping.values_at(target).first).send_keys value
end

Given(/I select (.*?) in (.*?)$/) do |value, target|
	mapping = {
		"year" => "year",
		"make" => "make", 
		"model" => "model",
		"shape" => "shape",
		"engine" => "engine"
	}

	Watir::Wait.until { 
		$browser.select_list(id: mapping.values_at(target).first).exists?
	}
	
	$browser.select_list(id: mapping.values_at(target).first).select value
end 

Given(/I chose the first match/) do
	
end

Given(/I switch to the new window/) do 
	$browser.windows.last.use
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
	#$browser.close
end