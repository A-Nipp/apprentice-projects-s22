//
//  ContentView.swift
//  Shared
//
//  Created by AlecNipp on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var max = 10
    @State private var isShowingAlert = false
    var progress: Double {
        Double(count) / Double(max)
    }
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.blue, .white], startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                LinearGradient(colors: [.red,.white], startPoint: .bottom, endPoint: .top)
                    .opacity(progress)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Text("Count: \(count)")
                            .font(.largeTitle)
                        Spacer()
                        NavigationLink(destination: SettingsView(max: $max)) {
                            Image(systemName: "gear")
                                .font(.system(size: 30))
            
                        }
                    }
                    Spacer()
                    HStack{
                        Button(action: {
                            if count == 0 {
                                isShowingAlert = true
                            }
                            if count > 0 {
                                count -= 1
                            }
                            
                        }, label: { ButtonLabel(imageNameString: "minus")})
                            .alert("You can't have fewer than 0 people!", isPresented: $isShowingAlert) {
                                Button("Dismiss", role: .cancel, action: {})
                            }
                        Button(action: {
                            if count < max {
                                count += 1
                            }
                            
                        }, label: { ButtonLabel(imageNameString: "plus")})
                    }
                    .padding()
                }
                .padding()
                .navigationBarHidden(true)
                
                
            }
        }
    }
}

struct ButtonLabel: View {
    let imageNameString: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(minWidth: 100, idealWidth: 150, maxWidth: 100, minHeight: 100, idealHeight: 150, maxHeight: 200)
                .foregroundColor(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Image(systemName: imageNameString)
                .font(.system(size: 70))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
