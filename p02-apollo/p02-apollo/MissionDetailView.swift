//
//  MissionDetailView.swift
//  p02-apollo
//
//  Created by Samuel Shi on 1/12/22.
//

import SwiftUI

struct MissionDetailView: View {
    // use this mission to display the content on the detail view
    let mission: Mission
    
    var body: some View {
        ScrollView {
            VStack {
                Image(mission.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                Text(mission.formattedLaunchDate)
                    .padding()
                Text(mission.description)
                
            }
        }
        .padding()
        .navigationTitle(               Text(mission.displayName))
    }
    
}

struct MissionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MissionDetailView(mission: .example)
    }
}
