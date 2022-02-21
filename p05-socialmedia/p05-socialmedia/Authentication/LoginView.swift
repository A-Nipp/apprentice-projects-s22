//
//  LoginView.swift
//  p05-socialmedia
//
//  Created by AlecNipp on 2/21/22.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Login to your account")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom)

            TextField("Username", text: $userName)
            Divider()
            TextField("Password", text: $password)
            Divider()
            Button {
                
            } label: {
                Text("Login")
            }
            .padding(.top)
            .buttonStyle(.bordered)
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
