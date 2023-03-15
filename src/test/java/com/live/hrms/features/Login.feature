@Regression
Feature:Login

  @UI1 @SmokeTest
  Scenario: Login with valid crendentials
    Given Open browser
    When Hotel app application
    Then Enter the username "alpharetta123" and password "w0Lu2FEA7a6ur0uQAV/Bzg==" and Click on Login button
    And Verify the  welcome text "Welcome to Adactin Group of Hotels" in hotel home page


  @UI2 @SmokeTest
Scenario:  verify the check-out date field accepts a later date than check-in date.
  Given Open browser
  When Hotel app application
  Then Enter the username "alpharetta123" and password "w0Lu2FEA7a6ur0uQAV/Bzg==" and Click on Login button
  Then Enter the data in all fields and click search button
  |columnName |value|
  |Location   |Sydney|
  |Hotels     |Hotel Creek|
  |Room Type   |Standard  |
  |Number Of Rooms|1 - One|
  |Check In Date|17/03/2023|
  |Check Out Date|15/03/2023|
  |Adults per Room |1 - One|
  |Children per Room|2 - Two|
    And Verify the page should display "Check-In Date shall be before than Check-Out Date"

  @UI3 @SmokeTest
  Scenario:  Check if error is date field is in the past
    Given Open browser
    When Hotel app application
    Then Enter the username "alpharetta123" and password "w0Lu2FEA7a6ur0uQAV/Bzg==" and Click on Login button
    Then Enter the data in all fields and click search button
      |columnName |value|
      |Location   |Sydney|
      |Hotels     |Hotel Creek|
      |Room Type   |Standard  |
      |Number Of Rooms|1 - One|
      |Check In Date|14/03/2023|
      |Check Out Date|15/03/2023|
      |Adults per Room   |   1 - One |
      |Children per Room |1 - One  |

  @UI4 @SmokeTest
  Scenario:Verify whether locations in Select Hotel page are displayed according to the location selected in Search Hotel
    Given Open browser
    When Hotel app application
    Then Enter the username "alpharetta123" and password "w0Lu2FEA7a6ur0uQAV/Bzg==" and Click on Login button
    Then Enter the data in all fields and click search button
      |columnName |value|
      |Location   |Sydney|
      |Hotels     |Hotel Creek|
      |Room Type   |Standard  |
      |Number Of Rooms|1 - One|
      |Check In Date|14/03/2023|
      |Check Out Date|16/03/2023|
      |Adults per Room   |1 - One|
      |Children per Room |1 - One|
    And Verify the location "Sydney" is displayed in select hotel page

    @UI5
    Scenario:Verify date and Check Out date are being displayed in Select Hotel Page according to the dates selected in search Hotel
    Given Open browser
    When  Hotel app application
    Then Enter the username "alpharetta123" and password "w0Lu2FEA7a6ur0uQAV/Bzg==" and Click on Login button
    Then  Enter the data in all fields and click search button
      |columnName |value|
      |Location   |Sydney|
      |Hotels     |Hotel Creek|
      |Room Type   |Standard  |
      |Number Of Rooms|1 - One|
      |Check In Date|15/03/2023|
      |Check Out Date|16/03/2023|
      |Adults per Room   |1 - One|
      |Children per Room |0 - None|
      And Verify the checkout date "16/03/2023" is displayed in select hotel page

      @UI6
      Scenario: Verify whether number of rooms entry in Select Hotel page is same as the Number of rooms selected in search hotel page
        Given Open browser
        When  Hotel app application
        Then Enter the username "alpharetta123" and password "w0Lu2FEA7a6ur0uQAV/Bzg==" and Click on Login button
        Then  Enter the data in all fields and click search button
          |columnName |value|
          |Location   |Sydney|
          |Hotels     |Hotel Creek|
          |Room Type   |Standard  |
          |Number Of Rooms|1 - One|
          |Check In Date|14/03/2023|
          |Check Out Date|16/03/2023|
          |Adults per Room   |1 - One|
          |Children per Room |0 - None|
        And Verify the number of rooms "1 Rooms" is displayed in select hotel page
