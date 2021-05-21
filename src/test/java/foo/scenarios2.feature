@parallel=false
Feature: TestSet 2

  Background:
    * callonce read('utils.feature')
    * def testSetId = 'TestSet2'

  Scenario: scenario1
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: 'Scenario1'}

  Scenario: scenario2
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: 'Scenario2'}

  Scenario: scenario3
    * call read('sleep.feature') {testSetId: '#(testSetId)', scenarioId: 'Scenario3'}
