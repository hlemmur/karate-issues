  Feature:
    Scenario:
      * def xmlRequest = read('number-to-words.xml')
      * def result = call read('convert.feature')
      #* def result = call read('convert.feature') {xmlRequest : '#(xmlRequest)'}
      * print 'Result: ', result