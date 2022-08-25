//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Gal Cohavy on 8/8/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
