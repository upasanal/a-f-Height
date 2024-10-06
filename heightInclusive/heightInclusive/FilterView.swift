//
//  FilterView.swift
//  heightInclusive
//
//  Created by Upasana Lamsal on 10/6/24.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        ZStack{
            NavigationView{
                VStack(spacing: 0) {
                    Image("filterView1")
                        .resizable()
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.top)
                        .overlay(
                                             NavigationLink(destination: ratingView()) {
                                                 Rectangle()
                                                     .frame(width: 100, height: 50)
                                                     .foregroundColor(.clear)
                                             }
                                             .position(x: 380, y: 20) // Define the x, y position within the image
                                         )
                    // Custom rectangle with "Height" label and arrow
                                 NavigationLink(destination: heightSelectView()) {
                                     HStack {
                                         Text("Height")
                                             .font(.system(size: 18))
                                             .foregroundColor(.black)
                                         Spacer()
                                         Image(systemName: "chevron.right") // Arrow on the right
                                             .foregroundColor(.gray)
                                     }
                                     .padding()
                                     .frame(width: UIScreen.main.bounds.width, height: 70)
                                     .background(Color.white)
                
                                     .shadow(radius: 1)
                                 }
                                 .padding(.horizontal)
                                 .padding(.top, -75)
                    
                    Image("filterView2")
                        .resizable()
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.top)
                        .overlay(
                                             NavigationLink(destination: filteredRatingView()) {
                                                 Rectangle()
                                                     .frame(width:162, height: 50)
                                                     .foregroundColor(.clear)
                                             }
                                             .position(x: 260, y: 435) // Define the x, y position within the image
                                         )
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    FilterView()
}
