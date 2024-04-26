//
//  sample_swiftUIApp.swift
//  sample_swiftUI
//
//  Created by anh.nguyen3 on 24/04/2024.
//

import SwiftUI

@main
struct sample_swiftUIApp: App {
    
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
