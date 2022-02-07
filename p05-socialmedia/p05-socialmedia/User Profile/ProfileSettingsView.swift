//
//  ProfileSettings.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileSettingsView: View {
    @Environment(\.dismiss) var dismiss
    @State var name: String = "App Team Carolina"
    @State var username: String = "appteamcarolina"
    let profileImageAddress: String = "appteam" // will eventually be url
    

    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button("Cancel") {
                    dismiss()
                }
                Spacer()
                Text("Edit Profile")
                    .fontWeight(.bold)
                Spacer()
                Button("Save") {
                    dismiss()
                }
            }
            .padding(.bottom, 60)
            Button {} label: {
                Image(profileImageAddress)
                    .resizable()
                    .frame(width:70, height:70)
                    .clipShape(Circle())
            }
            HStack {
                Text("Name")
                    .fontWeight(.bold)
                TextField(name, text: $name)
            }
            Spacer()
            Spacer()
        }
        .padding()
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingsView()
    }
}
