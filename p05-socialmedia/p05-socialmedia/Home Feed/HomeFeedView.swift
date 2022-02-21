//
//  HomeFeedView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/1/22.
//

import SwiftUI

struct HomeFeedView: View {
    @StateObject var vm = HomeFeedViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach(vm.posts, id: \.id) { post in
                            PostView(post: post)
                                .padding()
                            Divider()
                        }
                    }
                }
                .navigationTitle(Text("bluebird"))
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            vm.showingSheet.toggle()
                        } label: {
                            ZStack {
                                Color.blue
                                    .clipShape(Circle())
                                    .frame(width:50, height:50)
                                Image(systemName: "plus")
                                    .resizable()
                                    .foregroundColor(Color.white)
                                    .frame(width:20, height:20)
                            }
                        }
                        .padding(15)
                    }
                }
            }
        }
        .onAppear(perform: {vm.fetchPosts()})
        .sheet(isPresented: $vm.showingSheet) {
            NewPostView(vm: NewPostViewModel(), homeViewModel: vm)
                }
    }
}


struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
