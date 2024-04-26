//
//  CategoryItem.swift
//  sample_swiftUI
//
//  Created by anh.nguyen3 on 26/04/2024.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .renderingMode(.original)
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    var landmarks: [Landmark] = ModelData().landmarks
    return CategoryItem(landmark: landmarks[0])
}
