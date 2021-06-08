@testSetFive
Feature: TestSet 5
  Background:
    * callonce read('utils.feature')

  @release=2.9.0
  Scenario Outline: Execute <ScenarioId> from <testSetId>.
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: 'Scenario1'}

    @scenarioOneAndTwo
    Examples:
      | testSetId | ScenarioId |
      | TestSet5 | Scenario1 |
      | TestSet5 | Scenario2 |

    @scenarioThree
    Examples:
      | testSetId | ScenarioId |
      | TestSet5 | Scenario3 |