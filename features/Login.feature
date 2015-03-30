Feature: Officer can login securely

Scenario: Login
	Given I am on the HLGSA login page
	When I fill in "Netid" with "jsmith"
	And I fill in "Password" with "password1234"
	And I select "Login"
	Then I should be on the HLGSA home page
