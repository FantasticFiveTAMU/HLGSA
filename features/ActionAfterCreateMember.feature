Feature: Action after Member creation

Background: Start from the corresponding member page
	Given I have added a member
	And I am on the corresponding Member page
	Then I should see "Back"
	And I should see "Edit"
	

Scenario: See the list of members
	When I follow "Back"
	Then I should be on the Listing members page
	And I should see "Smith"
Scenario: Edit the new member
	When I follow "Edit"
	Then I should be on the New member page
	And I should see "1234"
	And I should see "John"
	And I should see "Smith"
	And I should see "jsmith@tamu.edu"
	And I should see "CSCE"
	And I should see "Member"
	And I should see "t"
