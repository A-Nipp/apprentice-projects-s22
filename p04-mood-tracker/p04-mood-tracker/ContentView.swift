//
//  ContentView.swift
//  p04-mood-tracker
//
//  Created by Samuel Shi on 1/17/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MoodTrackerViewModel()
    var body: some View {
        NavigationView{
            Form {
                Section("New Check-In") {
                    HStack{
                        TextField("Enter your mood", text: $viewModel.newCheckInMood)
                            .onSubmit {
                                viewModel.addCheckIn(moodString: viewModel.newCheckInMood)
                            }
                        Button("Save") {
                            viewModel.addCheckIn(moodString: viewModel.newCheckInMood)
                        }
                    }
                }
                Section("Previous Check-ins") {
                    ForEach(viewModel.previousCheckIns.reversed()) { checkIn in
                        VStack(alignment: .leading) {
                            Text(checkIn.mood)
                            Text(checkIn.formattedTimestamp)
                                .fontWeight(.light)
                        }
                        
                    }
                }
            }
            .navigationTitle("Mood Tracker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
