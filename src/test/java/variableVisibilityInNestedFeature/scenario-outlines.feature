Feature:
  Scenario Outline: Convert <number> number to words
    * call read('between.feature')

    Examples:
      | number  | expectedResult |
      | 500     | five hundred |
      | 123     | one hundred and twenty three |