Feature: Taking a Virtual Tour

  @wip
  Scenario: Starts the tour
    Given a user visits the tour page
    When he selects a starting point
    Then he should see the starting point on the map
    

    @wip
    Scenario: Go to the next point on the tour
      Given a user is taking the virtual tour
      When he selects the next location
      Then he should move to the next location on the tour
      And should see a map indicating their tour path

    @wip
    Scenario: Go to the previous point on the tour
      Given the user is taking the virtual tour
      When he selects the previous location
      Then he should move to the next location on the tour
   

