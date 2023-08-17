Feature: Edit Grades
    Scenario: edit grades as teacher
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Edit" on a post
      And I update the form and submit
      Then that user's grade should be updated

    Scenario: edit grades as TA
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Edit" on a post
      And I update the form and submit
      Then that user's grade should be updated