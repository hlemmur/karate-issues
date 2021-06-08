@testSetFive
Feature: TestSet 5
  Background:
    * callonce read('utils.feature')

  @release=2.9.0
  Scenario Outline: Test example <testExampleId>. Execute <scenarioId> from <testSetId>.
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: '#(scenarioId)'}

    @scenarioOneAndTwo
    Examples:
      |testExampleId | testSetId | scenarioId |
      | 1            | TestSet5  | Scenario1  |
      | 2            | TestSet5  | Scenario2  |

    @scenarioThree
    Examples:
      |testExampleId | testSetId | scenarioId |
      | 3            | TestSet5  | Scenario3  |