//
//  Landmark.swift
//  sample_swiftUI
//
//  Created by anh.nguyen3 on 24/04/2024.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String // make this private because people using the struct Landmark care only about the image itself
    var image: Image {
        Image(imageName)
    }

    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
