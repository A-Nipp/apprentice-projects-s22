//
//  MoodTrackerViewModel.swift
//  p04-mood-tracker
//
//  Created by AlecNipp on 1/23/22.
//

import Foundation

class MoodTrackerViewModel: ObservableObject {
    @Published var previousCheckIns: [MoodCheckIn] = []
    @Published var newCheckInMood = ""
    
    func addCheckIn(moodString: String) {
        if newCheckInMood == "" {
            return
        }
        previousCheckIns.append(MoodCheckIn(mood: newCheckInMood, timestamp: Date()))
        newCheckInMood = ""
    }
}
