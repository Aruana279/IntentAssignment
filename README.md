# IntentAssignment
Arman Saduakas - asaduakas@wpi.edu
Aruzhan Koshkarova - akoshkarova@wpi.edu

The Intent protocol isn't present in IOS. In order for Views and Activities to exchange information, IOS uses the "single source of truth", or in other words - data driven UI. 
Basically, you create bindings and states, and swiftUI automatically monitors these variables for different views to exchange information. In this
application, the List activity keeps track of which landmarks have been favorited and changes the "Like" button accordingly based on the state of 
those variables. 
