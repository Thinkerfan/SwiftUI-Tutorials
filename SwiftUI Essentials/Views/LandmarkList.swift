//
//  LandmarkList.swift
//  SwiftUI Essentials
//
//  Created by cfans on 2019/9/21.
//  Copyright © 2019 cfans. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhoneSE","iPhone8","iPhone XR","iPad mini 4"],id: \.self){ deviceName in
            LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
