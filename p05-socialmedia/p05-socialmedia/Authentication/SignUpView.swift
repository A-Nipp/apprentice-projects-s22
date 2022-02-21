//
//  SignUpView.swift
//  p05-socialmedia
//
//  Created by AlecNipp on 2/21/22.
//

import SwiftUI

struct SignUpView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    var body: some View {
        VStack {
            Text("Create your account")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom)
            
            TextField("Username", text: $userName)
            Divider()
            TextField("Password", text: $password)
            Divider()
            TextField("Confirm Password", text: $confirmPassword)
            Divider()
            Button {
                
            } label: {
                Text("Create Account")
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
