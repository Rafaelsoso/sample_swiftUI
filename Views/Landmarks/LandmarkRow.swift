//
//  LandmarkRow.swift
//  sample_swiftUI
//
//  Created by anh.nguyen3 on 24/04/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: ModelData().landmarks[0])
}

#Preview("Salmon") {
    LandmarkRow(landmark: ModelData().landmarks[1])
}

//#Preview {
//    Group {
//        LandmarkRow(landmark: landmarks[0])
//        LandmarkRow(landmark: landmarks[1])
//    }
//}
