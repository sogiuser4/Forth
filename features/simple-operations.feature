Feature: The Forth interpreter shall understand basic operations

  Background:
    Given a forth interpreter

  Scenario: Addition
     When I execute "3 4 + ."
     Then I should get "7 ok"

  Scenario: Substraction
     When I execute "3 4 - ."
     Then I should get "-1 ok"

  Scenario: Multiplication
     When I execute "3 4 * ."
     Then I should get "12 ok"

  Scenario: Duplication
     When I execute "1 DUP . ."
     Then I should get "1 1 ok"

  Scenario: Division
     When I execute "5 2 / ."
     Then I should get "2 ok"

 Scenario: Division by zero
     When I execute "1 0 /"
     Then I should receive the error "divide by zero"

 Scenario: Square
     When I execute "2 ² ."
     Then I should receive the error "4 ok"

  Scenario: Negation
     When I execute "1 NEG ."
     Then I should get "-1 ok"
