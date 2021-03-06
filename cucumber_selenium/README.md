## Cucumber and Selenium Automation

In this episode of the technical meetup we will be covering the key elements to get started using web test automation.

### Objective
- Toolset to avoid repetitive tasks
- Apply test techniques like keyword or data driven testing
- Make use of technical skills to leverage a robust practice against error-prone activities


### Software Requirements
- Install the latest distribution of the [ruby](https://www.ruby-lang.org/en/downloads/) programming language
- Install the Cucumber gem
```
gem install cucumber --no-ri --no-rdoc
```
- Install the watir driver which include the Selenium capabilities
```
gem install watir --no-ri --no-rdoc
gem install watir-webdriver --no-ri --no-rdoc
cucumber -r step_definitions/sgio_quote.rb features/sgio_car_quote.feature
```

- Install the plugin Selenium IDE in [Firefox](http://www.mozilla.org/en-US/)
- Install Sublime Text 2 Editor for easy file editing

