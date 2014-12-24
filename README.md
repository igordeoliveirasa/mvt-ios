mvt-ios
=======

Social Login for iOS. Current there is Facebook. I want to add Google, GitHub, Twitter, Linkedin and so on.

Pre-requisites
-------

1 - Download and install the Facebook SDK for iOS and install, from:
https://developers.facebook.com/resources/facebook-ios-sdk-current.pkg

2 - Open the info.plist and change the following key values: 
- FacebookAppID: \<Inform your Facebook App Id\>
- FacebookDisplayName: \<Inform your Facebook App Name\>
- URL Types
  - Item 0 
    - URL Schemes
      - Item 0: fb\<Inform your Facebook App Id\>

3 - Compile it, run and start your business logic!
