Feature: Show event

Scenario: show an even after add an event

	Given a member exists with department "CSCE" and designation "member_designation_officer" and email "gwilde1@tamu.edu" and first_name "Grant" and last_name "Wilde" and paying "member_paying_yes" and status "member_status_student" and uin: "1234"

	Given an event exists with title "HLGSA Spring 2015 Open House" and date "04-01-2015" and time "07:00pm" and location "HRBB 124" and description "First meeting of the Srirng 2015 semester" and invite "event_invite_officers"

	Given there is a user
	And I am on the login page
	And I fill in "session_email" with "gwilde1@tamu.edu"
	And I fill in "session_password" with "password"
	And I press "Log in"
	Then I should be on the HLGSA home page
	When I press "Events"
	Then I should be on the Listing events page
	And I press "Show Details"
	Then I should be on the corresponding Event page
	And I should see "HLGSA Spring 2015 Open House"
