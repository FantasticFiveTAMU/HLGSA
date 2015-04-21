Feature: Officer can schedule events

Scenario: Schedule event
	Given I am on the HLGSA home page
	When I follow "Enter Events"
	Then I should be on the Listing events page
	When I follow "New event"
	Then I should be on the New event page
	When I fill in "Title" with "HLGSA Spring 2015 Open House"
	And I fill in "Date" with "04-01-2015" 
	And I fill in "Time" with "07:00pm"
	And I fill in "Location" with "HRBB 124"
	And I fill in "Description" with "First meeting of the Srirng 2015 semester"
	And I choose "event_invite_all"
	And I press "Create Event"
	Then I should be on the corresponding Event page
