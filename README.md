# IntentAssignment
# Arman Saduakas - asaduakas@wpi.edu
# Aruzhan Koshkarova - akoshkarova@wpi.edu

The Intent protocol isn't present in IOS. In order for Views and Activities to exchange information, IOS uses the "single source of truth", or in other words - data driven UI. 
During the mobile application creation, user creates bindings and states. SwiftUI monitors these variables in the background for different views to exchange information. In this application, the List activity keeps track of which landmarks have been favorited and changes the "Like" button accordingly based on the state of those variables.

The first activity displays the list that shows Almaty city popular attractions, and the second activity displays detailed information about these sightseeings.  In the second activity, the user can Favorite the sightseeing, and that like is reflected in the first activity.
