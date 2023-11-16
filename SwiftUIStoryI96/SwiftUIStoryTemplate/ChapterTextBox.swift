//
//  ChapterTextBox.swift
//  SwiftUIStoryTemplate
//
//  Created by Nigel Krajewski on 11/15/23.
//

import SwiftUI
/*
 Use this view in your Chapter View to insert your chapeter title and story text
 */
struct ChapterTextBox: View {
    
    var title: String
    var story: String
    
    // MARK: Body
    var body: some View {
        
        VStack() {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.yellowBg)
                    .frame(height: 75)
                    .shadow(radius: 3)
                    .opacity(0.9)
                HStack {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.textBlue)
                        .padding()
                    Spacer()
                }
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.yellowBg)
                    .shadow(radius: 3)
                    .opacity(0.9)
                VStack {
                    ScrollView {
                        Text(story)
                            .foregroundStyle(Color.textBlue)
                            .padding()
                        Spacer()
                    }
                    
                }
            }
        }
        .padding(30)
    }
}

//MARK: Functions
// Function to return random index for a list
func randomIndex(lessThan listCount: Int) -> Int {
    return .random(in: 0..<listCount)
}

#Preview {
    ChapterTextBox(title: "hi", story: "Hello")
}
