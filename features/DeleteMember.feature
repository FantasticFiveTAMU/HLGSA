Feature: Delete member

Scenario: delete a member after add a member

	Given a member exists with department "CSCE" and designation "member_designation_member" and email "gwilde1@angelo.edu" and first_name "Grant" and last_name "Wilde" and paying "member_paying_yes" and status "member_status_student" and uin: "1234"

	Given there is a user
	And I am on the login page
	And I fill in "session_email" with "gwilde1@tamu.edu"
	And I fill in "session_password" with "password"
	And I press "Log in"
	Then I should be on the HLGSA home page
	When I press "Members"
	Then I should be on the Listing members page
	And I press "Delete Member"
	And I confirm delete member popup
	Then I should be on the Listing members page
	And I should not see "Grant"
