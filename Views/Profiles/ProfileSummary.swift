//
//  ProfileSummary.swift
//  sample_swiftUI
//
//  Created by anh.nguyen3 on 26/04/2024.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)

                Text("Notification: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goad Dates:") + Text(profile.goalDate, style: .date)
            }
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                
                ScrollView(.horizontal) {
                    HStack {
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 45))
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(0.50)
                            .hueRotation(Angle(degrees: 45))
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}
