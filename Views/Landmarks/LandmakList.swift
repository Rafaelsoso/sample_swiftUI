//
//  LandmakList.swift
//  sample_swiftUI
//
//  Created by anh.nguyen3 on 25/04/2024.
//

import SwiftUI

struct LandmakList: View {

    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = true

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .animation(.default, value: filteredLandmarks)
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmakList()
        .environment(ModelData())
}
