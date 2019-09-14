//
//  CircleImage.swift
//  SwiftUI Essentials
//
//  Created by cfans on 2019/9/15.
//  Copyright © 2019 cfans. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
