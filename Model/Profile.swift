//
//  Profile.swift
//  sample_swiftUI
//
//  Created by anh.nguyen3 on 26/04/2024.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        var id: String { rawValue }
        
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}
