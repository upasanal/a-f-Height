//
//  pantExView.swift
//  heightInclusive
//
//  Created by Upasana Lamsal on 10/6/24.
//

import SwiftUI

struct pantExView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 0) {
                // Fixed Image at the top
                HStack{
                    NavigationLink(destination: ContentView()){
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width / 9)
                            .padding(.leading, 50)
                    }
                    Image("slimPantNav")
                        .resizable()
                        .scaledToFit()
                        .frame(width: (8 * UIScreen.main.bounds.width) / 9)
                        .padding(.trailing, 30)
                    
                }
                .padding(.top, -20)
                ScrollView{
                    VStack{
                    
                        Image("slimView1")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        Image("slimView2")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        Image("slimView3")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        
                        
                        Image("slimViewSize")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        
                        
                        Image("slimView4")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        Image("slimView5")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                            .padding(.top,-65)
                        Image("slimView6")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        
                        NavigationLink(destination: ratingView()){
                            Image("slimViewReview")
                                .resizable()
                                .scaledToFit()
                                .edgesIgnoringSafeArea(.top)
                                .padding(.top,-15)
                        }
                        
                        
                      
                    }
                }
                Image("slimBottomNav")
                    .resizable()
                    .scaledToFit()
                    .frame(width: (UIScreen.main.bounds.width))
                    .padding(.bottom,-55)
            }
            
        }
        .navigationBarHidden(true)
    }
    
}

#Preview {
    pantExView()
}
