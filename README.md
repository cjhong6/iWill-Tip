**iWill Tip** is a tip calculator application for iOS.

Submitted by: **Chengjiu Hong**

Time spent: **9** hours spent in total

## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* [x] A pickerView to select how many people split the total amount.
* [x] A clear button to clear bill amount, tip amount, split amount and total amount.
* [x] Add a light/dark color theme to the settings view. In viewWillAppear, update views with the correct theme colors.

List anything else that you can get done to improve the app functionality!
* Redesign the UI just to more professional


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![demo](https://cloud.githubusercontent.com/assets/15274466/20820001/e05e9044-b7ec-11e6-9e56-a45c4e53c2f4.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** My reaction to the IOS app developmnet so far is very easy to pick up since I have programming experience. I would explain outlet as a connection that connect the frondend UI to the backend code. An action would be what do you expect certain part of the toggle(button, text, etc.) perform. I think the implementation under the hood would be writing it out like html element.

**Question 2**: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** Strong reference cycle for closures is setting up the reference in a way that the ARC won't deallocate the instance. The way it set up is create a clsoure property inside the class and the body of the closure property need access the instance's property using keyword "self".

## Notes
The changllenge that I ran to are the new knowledge of Swift language adn xcode. So I joined the MobileSpace program to get a general idea of programming in IOS app. After few weeks of thie program, it comes a smooth transition to do this tip calculator project but I still need to learn more IOS programming.

## License

    Copyright [2017] [Chengjiu Hong]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
