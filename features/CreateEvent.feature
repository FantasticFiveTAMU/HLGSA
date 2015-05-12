Feature: Officer can schedule events

Scenario: Schedule event

	Given a member exists with department "CSCE" and designation "member_designation_officer" and email "gwilde1@tamu.edu" and first_name "Grant" and last_name "Wilde" and paying "member_paying_yes" and status "member_status_student" and uin: "1234"

	Given there is a user
	And I am on the login page
	And I fill in "session_email" with "gwilde1@tamu.edu"
	And I fill in "session_password" with "password"
	And I press "Log in"
	Then I should be on the HLGSA home page
	When I press "Events"
	Then I should be on the Listing events page
	When I press "New Event"
	Then I should be on the New event page
	When I fill in "Title" with "HLGSA Spring 2015 Open House"
	And I fill in "Date" with "04-01-2015" 
	And I fill in "Time" with "07:00pm"
	And I fill in "Location" with "HRBB 124"
	And I fill in "Description" with "First meeting of the Srirng 2015 semester"
	And I choose "event_invite_officers"
	And I press "Create Event"
	Then I should be on the corresponding Event page
