//
//  SettingsView.swift
//  Countz
//
//  Created by AlecNipp on 1/12/22.
//

import SwiftUI

struct SettingsView: View {
    @Binding var max: Int
    var body: some View {
        Form {
            Stepper("Maximum Occupancy: \(max)", value: $max, in: 0 ... Int.max)
        }
        .navigationTitle("Settings")
    }
}

//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView(max: 10)
//    }
//}
