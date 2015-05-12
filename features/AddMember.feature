Feature: Officer can manually add member

Scenario: Add a member

	Given there is a user
	And I am on the login page
	And I fill in "session_email" with "gwilde1@tamu.edu"
	And I fill in "session_password" with "password"
	And I press "Log in"
	Then I should be on the HLGSA home page
	When I press "Members"
	Then I should be on the Listing members page
	When I press "New member"
	Then I should be on the New member page
	When I fill in "member_uin" with "1234"
	And I fill in "member_first_name" with "John"
	And I fill in "member_last_name" with "Smith"
	And I fill in "member_email" with "jsmith@tamu.edu"
	And I fill in "member_department" with "CSCE"
	And I choose "member_designation_member"
	And I choose "member_paying_yes"
	And I choose "member_status_student"
	And I press "Create Member"
	Then I should be on the corresponding Member page
	
