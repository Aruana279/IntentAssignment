//
//  LandmarkList.swift
//  TripInfo
//
//  Created by Arman Saduakas on 9/12/22.
//

import SwiftUI

struct LandmarkList: View {
    @State var state0 = false
    @State var state1 = false
    @State var state2 = false
    
    var body: some View {
        NavigationView {
            List{
                NavigationLink {
                    LandmarkDetail(landmark: landmarks[0], isFavorite: $state0)
                } label: {
                    LandmarkRow(landmark: landmarks[0], isFavorite: $state0)
                }
                NavigationLink {
                    LandmarkDetail(landmark: landmarks[1], isFavorite: $state1)
                } label: {
                    LandmarkRow(landmark: landmarks[1], isFavorite: $state1)
                }
                NavigationLink {
                    LandmarkDetail(landmark: landmarks[2], isFavorite: $state2)
                } label: {
                    LandmarkRow(landmark: landmarks[2], isFavorite: $state2)
                }
            }
            .navigationTitle("Welcome to Almaty")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
