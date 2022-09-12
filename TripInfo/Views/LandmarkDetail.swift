//
//  LandmarkDetail.swift
//  TripInfo
//
//  Created by Arman Saduakas on 9/12/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    @Binding var isFavorite: Bool
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                      .ignoresSafeArea(edges: .top)
                      .frame(height: 300)

            CircleImage(image: landmark.image)
                      .offset(y: -130)
                      .padding(.bottom, -130)

                  VStack(alignment: .leading) {
                      HStack{
                          Text(landmark.name)
                              .font(.title)
                          Spacer()
                          Button(action: {
                             self.isFavorite.toggle()
                          }) {
                              Image(systemName: self.isFavorite == true ? "heart.fill" : "heart")
                                  .resizable()
                                  .frame(width: 30, height: 30)
                          }
                      }
                      
                      HStack {
                          Text(landmark.region)
                          Spacer()
                          Text(landmark.city)
                      }
                      .font(.subheadline)
                      .foregroundColor(.secondary)

                      Divider()

                      Text("About \(landmark.name)")
                          .font(.title2)
                      Text(landmark.description)
                  }
                  .padding()
              }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[2], isFavorite: .constant(false))
    }
}
