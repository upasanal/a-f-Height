//
//  heightSelectView.swift
//  heightInclusive
//
//  Created by Upasana Lamsal on 10/6/24.
//

import SwiftUI

struct heightSelectView: View {
    @State private var selectedHeights: [Bool] = Array(repeating: false, count: 6)
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                Image("heightSelectView")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
                    .padding(.bottom, -100)
                    .overlay(
                        Text("Height")
                            .font(.system(size: 21))
                            .foregroundColor(.black)
                            .background(Color.white)
                            .frame(width: 100, height: 50)
                            .position(x: 195, y: 18)
                        
                    )
                    .overlay(
                        NavigationLink(destination: FilterView()) {
                            Rectangle()
                                .frame(width: 100, height: 50)
                                .foregroundColor(.clear)
                        }
                            .position(x: 380, y: 20)
                        
                    )
                    .overlay(
                        NavigationLink(destination: FilterView()) {
                            Rectangle()
                                .frame(width: 100, height: 50)
                                .foregroundColor(.clear)
                        }
                            .position(x: 10, y: 20)
                        
                    )
                
                
                List {
                    ForEach(0..<4) { index in
                        HStack {
                            // Custom checkbox
                            Button(action: {
                                // Toggle the checkbox state
                                selectedHeights[index].toggle()
                            }) {
                                HStack {
                                    // Checkbox rectangle with a checkmark if selected
                                    Rectangle()
                                        .fill(selectedHeights[index] ? Color("afblue") : Color.clear)
                                        .frame(width: 20, height: 20)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .stroke(Color.black, lineWidth: 2)
                                        )
                                    Text(heightRange(for: index))
                                        .foregroundColor(.black)
                                        .padding(.leading, 10)
                                }
                                
                            }
                            
                        }
                    }
                }
                .listRowBackground(Color.white)
                
                Image("heightSelectView2")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
                    .overlay(
                        NavigationLink(destination: FilterView()) {
                            Rectangle()
                                .frame(width: 350, height: 50)
                                .foregroundColor(.clear)
                        }
                            .position(x: 196, y: 80)
                        
                    )
                
            }
            .scrollContentBackground(.hidden)
            
        }
        .navigationBarHidden(true)
    }
    
        // Height ranges for checkboxes
        func heightRange(for index: Int) -> String {
            switch index {
            case 0: return "<5'0\""
            case 1: return "5'0\" - 5'3\""
            case 2: return "5'4\" - 5'7\""
            case 3: return ">5'8\""
            default: return ""
            }
        }
    }


#Preview {
    heightSelectView()
}
