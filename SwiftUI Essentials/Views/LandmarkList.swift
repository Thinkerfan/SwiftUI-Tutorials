//
//  LandmarkList.swift
//  SwiftUI Essentials
//
//  Created by cfans on 2019/9/21.
//  Copyright © 2019 cfans. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData:UserData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(landmarkData){ landmark in
                    
                    if !self.userData.showFavoritesOnly || landmark.isFavorite{
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhoneSE","iPhone8","iPhone XR","iPad mini 4"],id: \.self){ deviceName in
            LandmarkList().environmentObject(UserData())
        }
    }
}
