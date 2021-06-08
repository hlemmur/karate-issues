@parallel=false
Feature: TestSet 2

  Background:
    * callonce read('utils.feature')
    * def testSetId = 'TestSet2'

  Scenario: scenario1
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: 'Scenario1'}

  @release=2.9.1
  Scenario: scenario2
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: 'Scenario2'}

  @release=2.9.1
  Scenario: scenario3
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: 'Scenario3'}
