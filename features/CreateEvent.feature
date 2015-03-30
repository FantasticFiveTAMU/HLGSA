Feature: Officer can schedule events

Scenario: Schedule event
	Given I am on the HLGSA home page
	When I follow "Add new event"
	Then I should be on the Create New Event page
	When I fill in "Event name" with "HLGSA Spring 2015 Open House"
	And I fill in "Date" with "04-01-2015" 
	And I fill in "Start time" with "07:00pm"
	And I fill in "Location" with "HRBB 124"
	And I press "Save Changes"
	Then I should be on the HLGSA home page
	And I should see "HLGSA Spring 2015 Open House created"
