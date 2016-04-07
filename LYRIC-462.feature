  Feature: Multiple Users can see Stream
  
  As a user, I need to have the flexibility that multiple added Lyric users to the account should be allowed to live stream simulataneously.
  
  Scenario: Adding multiple user for camera provision 
    Given User A is a lyric User
    And User B has registered Lyric account
     When User A adds User B to his/her lyric account 
     Then User B has the provision to view User A's shared camera
     
     
       Scenario: Adding multiple user for camera provision 
    Given User A is a lyric User
    And User B is non registered Lyric user
     When User A adds User B to his/her lyric account 
     Then User B's account shouldn't be listed in the user list 

