//
//  NewPostView.swift
//  p05-socialmedia
//
//  Created by AlecNipp on 2/21/22.
//

import SwiftUI

struct NewPostView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var vm: NewPostViewModel
    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    dismiss()
                }
                Spacer()
                Button("Post") {
                    vm.makePost()
                    dismiss()
                }
            }
            HStack {
                Image("appteam")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40.0, height: 40.0)
                    .clipShape(Circle())
                TextField("What's on your mind?", text: $vm.currentPostText)
            }
            Spacer()
        }
        .padding()
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView(vm: NewPostViewModel())
    }
}
