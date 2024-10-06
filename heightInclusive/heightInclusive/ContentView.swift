//
//  ContentView.swift
//  heightInclusive
//
//  Created by Upasana Lamsal on 10/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Fixed Image at the top
                Image("pantsNav")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width)
                    .edgesIgnoringSafeArea(.top)
                    .padding(-30)
                ScrollView{
                    VStack{
                        HStack{
                            Image("pantsNav1")
                                .resizable()
                                .scaledToFit()
                                .edgesIgnoringSafeArea(.top)
                        }
                        HStack{
                            Image("pantsNav2")
                                .resizable()
                                .scaledToFit()
                                .edgesIgnoringSafeArea(.top)
                                .frame(width: UIScreen.main.bounds.width / 2)
                            NavigationLink(destination: pantExView()){
                                Image("pantsNavEx")
                                    .resizable()
                                    .scaledToFit()
                                    .edgesIgnoringSafeArea(.top)
                                    .frame(width: UIScreen.main.bounds.width / 2)
                                    .padding(.top, -30)
                            }
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ContentView()
}
