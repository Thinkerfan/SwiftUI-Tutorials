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
        List{
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
