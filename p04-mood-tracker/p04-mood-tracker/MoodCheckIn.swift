//
//  MoodCheckIn.swift
//  p04-mood-tracker
//
//  Created by AlecNipp on 1/23/22.
//

import Foundation

struct MoodCheckIn: Identifiable {
    let mood: String
    let id = UUID()
    let timestamp: Date
    var formattedTimestamp: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, h:mm a"
        return dateFormatter.string(from: timestamp)
        
    }
}
