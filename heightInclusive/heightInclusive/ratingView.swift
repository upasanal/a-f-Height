//
//  ratingView.swift
//  heightInclusive
//
//  Created by Upasana Lamsal on 10/6/24.
//

import SwiftUI

struct ratingView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 0) {
                HStack{
                    NavigationLink(destination: pantExView()){
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width / 9)
                            .padding(.leading,10)
                    }
                    Image("ratingNav")
                        .resizable()
                        .scaledToFit()
                        .frame(width: (8 * UIScreen.main.bounds.width) / 9)
                        .padding(.trailing, 0)
                }
                .padding(.top, -20)
                
                ScrollView{
                    VStack{
                        Image("ratingView1")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        Image("ratingView2")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                            .padding(.top, -20)
                        HStack{
                           
                                Image("ratingView3")
                                    .resizable()
                                    .scaledToFit()
                                    .edgesIgnoringSafeArea(.top)
                                    .frame(width: (4 * UIScreen.main.bounds.width) / 5)
                            
                            NavigationLink(destination: FilterView()){
                                Image("ratingView4")
                                    .resizable()
                                    .scaledToFit()
                                    .edgesIgnoringSafeArea(.top)
                                    .frame(width: (UIScreen.main.bounds.width) / 4)
                                    .padding(.top, -15)
                            }
                        }
                        Image("ratingView5")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                        
                    }
                }
                
            }
        }
        .navigationBarHidden(true)
        
    }
}

#Preview {
    ratingView()
}
