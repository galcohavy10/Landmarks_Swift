//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Gal Cohavy on 8/11/22.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var LandmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack{
                HStack {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    FavoriteButton(isSet: $modelData.landmarks[LandmarkIndex].isFavorite)
                }
                HStack {
                    Text (landmark.park)
                        .font(.subheadline)
                    Text (landmark.state)
                        .font(.subheadline)
                }
                
                Divider()
                Text ("About \(landmark.name)")
                    .font(.title3)
                    .foregroundColor(.green)
                Text(landmark.description)
                    
                
            }
            .padding()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
