//
//  createClub.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct createClub: View {
    
    @State private var clubName : String = ""
    @State private var room : String = ""
    @State private var advisor : String = ""
    @State private var category : String = ""
    @State private var contact : String = ""
    @State private var about : String = ""
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Create Club")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical)
            Form {
                TextField("Club name", text: $clubName)
                    .padding(.top)
                
                TextField("Room", text: $room)
                    .padding(.top)
                
                TextField("Advisor", text: $advisor)
                    .padding(.top)
                   
                TextField("Category", text: $category)
                    .padding(.top)
                   
                TextField("Contact", text: $contact)
                    .padding(.top)
                   
                TextField("About", text: $about)
                    .padding(.top)
                
                Button("Add Club") {
                    ClubList.clubs2.insert(Club(imageName: "placeholder", clubName: clubName, roomNumber: room, advisor: advisor, category: category, contact: contact, about: about), at: 0)
                }
                .padding(.all)
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(/*@START_MENU_TOKEN@*/13.0/*@END_MENU_TOKEN@*/)
                }
            
    
            }
        
        }
    
    }




struct createClub_Previews: PreviewProvider {
    static var previews: some View {
        createClub()
    }
}





