Feature: Show member

Scenario: delete a member after add a member

Given a member exists with department "CSCE" and designation "member_designation_member" and email "gwilde1@angelo.edu" and first_name "Grant" and last_name "Wilde" and paying "member_paying_yes" and status "member_status_student" and uin: "1234"
Given I am on the Listing members page 
And I follow "Show"
Then I should be on the corresponding Member page
And I should see "Grant"
And I should see "Wilde"
