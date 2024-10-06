//
//  filteredRatingView.swift
//  heightInclusive
//
//  Created by Upasana Lamsal on 10/6/24.
//

import SwiftUI

struct filteredRatingView: View {
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
                        Image("filteredRating")
                            .resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.top)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 100, height: 40)
                                    .foregroundColor(Color(UIColor.lightGray))
                                    .position(x: 70, y: 25)
                        )
                            .overlay(
                                Text("5'1 - 5'3")
                                    .foregroundColor(.black)
                                    .position(x: 70, y: 25)
                                    .font(.system(size: 14, weight: .bold))
                            )
                        
                            
                        
                    }
                }
                
            }
        }
        .navigationBarHidden(true)
        
    }
}

#Preview {
    filteredRatingView()
}
