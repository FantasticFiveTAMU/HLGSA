Feature: Officer can manually add member

Scenario: Add a member
	Given I am on the HLGSA home page
	When I follow "Enter Members"
	Then I should be on the Listing members page
	When I follow "New member"
	Then I should be on the New member page
	When I fill in "Uin" with "1234"
	And I fill in "First name" with "John"
	And I fill in "Last name" with "Smith"
	And I fill in "Email" with "jsmith@tamu.edu"
	And I fill in "Department" with "CSCE"
	And I choose "member_designation_member"
	And I choose "member_paying_yes"
	And I choose "member_status_student"
	And I press "Create Member"
	Then I should be on the corresponding Member page
	
