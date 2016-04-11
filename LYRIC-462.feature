Feature: Multiple Users can see Stream
As a user 
I want to have the flexibility that multiple Lyric users added to the account
So that Users should be allowed to live stream simultaneously

Background:
  Given : Multiple user(Less than 5) are assocaited with single camera 


  Scenario: Verify if single User can view live stream when one or more users added to the account 
  When : One of user tries to view Live streaming 
  Then : user should be able to view the live streaming 
  
  Scenario: Verify if multiple Users(Less than 5) can view Live streaming an single camera
  When : When all associated Users try to View live camera 
  Then : Associated user should be able to view live camera 
  
  Scenario: Verify When the 6th user streams the live video, an appropriate error code must be sent to indicate that the limit has been exceeded
  When : 5 Users are streaming a live video from the single camera 
  And 6th User tries to Access the Same camera 
  Then An Appropriate Error Message should be displayed for the 6th User 
  
  Scenario: Verify When if any user from the pool exists live streaming , Queue User should be able to live stream
  When : 5 Users are streaming a live video from the single camera 
  And 6th User tries to Access the Same camera
  And if any User Exists from the Live stream Pool 
  Then Queue user (FIFO) Should be able to see the Live stream 
  
  Scenario: Verify if Single user can  live stream from multiple Devices (Mobile Devices)
  Given : Single User has logged in with same account in Different Mobile Device
  When : Single user tires view the live steaming with Multiple Mobile Device 
  Then : User should be able to view the live streaming all Devices 
  
  Scenario: Verify an appropriate error code is sent to indicate that the limit has been exceeded
  Given : Single User has logged in with same account in more than 5 Different Mobile Device
  When : single user live streams on more than 5 devices
  Then : An Appropriate Error Message should be displayed on the 6th Divice with same Account
  
  
  
  
  
  
