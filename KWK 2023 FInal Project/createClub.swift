//
//  createClub.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct createClub: View {
    
    @State var className = ""
    @State var room = ""
    @State var advisor = ""
    @State var category = ""
    
    var body: some View {
        
        VStack {
            Text("Create Club")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top)
            Form {
                TextField("Class name", text: $className)
                    .padding(.top)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Room", text: $room)
                    .padding(.top)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Advisor", text: $advisor)
                    .padding(.top)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Category", text: $category)
                    .padding(.vertical)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                }
            label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.black)
                    NavigationLink("Join", destination: myClubs())
                        .padding(.leading)
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                }
            }
            .padding(.bottom)
            }
        }
    }
}

struct createClub_Previews: PreviewProvider {
    static var previews: some View {
        createClub()
    }
}





