//
//  ContentView.swift
//  SwiftUI Essentials
//
//  Created by cfans on 2019/9/14.
//  Copyright © 2019 cfans. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack() {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
