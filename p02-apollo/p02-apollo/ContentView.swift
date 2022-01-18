//
//  ContentView.swift
//  p02-apollo
//
//  Created by Samuel Shi on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    // use this array of missions to show your mission content
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(missions, id: \.id) { mission in
                    NavigationLink(destination: MissionDetailView(mission: mission)) {
                        MissionListItemView(mission: mission)
                    }
                    
                }
            }
            .navigationTitle("NASA Missions")
        }
    }
}

struct MissionListItemView: View {
    let mission: Mission
    var body: some View {
        HStack {
            Image(mission.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(mission.displayName)
                Text(mission.formattedLaunchDate)
            }

        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
