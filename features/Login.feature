Feature: Officer can login securely

Scenario: Login

	Given there is a user
	And I am on the login page
	And I fill in "session_email" with "gwilde1@tamu.edu"
	And I fill in "session_password" with "password"
	And I press "Log in"
	Then I should be on the HLGSA home page
