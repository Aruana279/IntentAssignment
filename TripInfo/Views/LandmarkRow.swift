//
//  LandmarkRow.swift
//  TripInfo
//
//  Created by Arman Saduakas on 9/12/22.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    @Binding var isFavorite: Bool
    
    var body: some View {
        HStack{
            
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()

            Image(systemName: isFavorite == true ? "heart.fill" : "heart")
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0], isFavorite: .constant(false))
    }
}
