  Feature:
    Scenario:
      * print 'xmlRequest from convert: ', xmlRequest
      Given url 'https://www.dataaccess.com/webservicesserver/NumberConversion.wso'
      And header Content-Type = 'text/xml; charset=utf-8'
      When request xmlRequest
      And set xmlRequest/Envelope//ubiNum = number * 1
      And method post
      Then status 200
      And match /Envelope//NumberToWordsResult contains expectedResult