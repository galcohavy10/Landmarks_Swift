//
//  CircleImage.swift
//  Landmarks
//
//  Created by Gal Cohavy on 8/8/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        Image("turtleRock")
        .clipShape(Circle())
        .overlay{
        Circle().stroke(.white, lineWidth: 4)
            }
        .shadow(radius: 5)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
