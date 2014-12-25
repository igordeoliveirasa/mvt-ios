Minimal Viable Template for iOS
=======
[![Build Status](https://travis-ci.org/igordeoliveirasa/mvt-ios.svg?branch=master)](https://travis-ci.org/igordeoliveirasa/mvt-ios)

Social Login for iOS. 
There is Facebook, currently. 
I want to add Google, GitHub, Twitter, Linkedin and so on.

Pre-requisites
-------

1 - Install dependencies running the following commands, in your terminal:
- chmod +x configure.sh
- ./configure.sh

2 - Open the info.plist and change the following key values: 
- FacebookAppID: \<Inform your Facebook App Id\>
- FacebookDisplayName: \<Inform your Facebook App Name\>
- URL Types
  - Item 0 
    - URL Schemes
      - Item 0: fb\<Inform your Facebook App Id\>

3 - Compile it, run and start developing your business logic!
