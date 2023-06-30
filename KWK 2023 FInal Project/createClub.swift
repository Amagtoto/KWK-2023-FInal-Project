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
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("Room", text: $room)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("Advisor", text: $advisor)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("Category", text: $category)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)

                
                TextField("Contact", text: $contact)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                TextField("About", text: $about)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                    .listRowSeparator(.hidden)
                
                Button(action: {
                    ClubList.clubs2.insert(Club(imageName: "placeholder", clubName: clubName, roomNumber: room, advisor: advisor, category: category, contact: contact, about: about), at: 0)
    
                }, label: {
                   Text("Create Club")
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.cornerRadius(10))
                .foregroundColor(.white)
                .font(.headline)
                //Di sables button until all fields are filled
                .disabled(clubName.isEmpty || room.isEmpty || advisor.isEmpty || category.isEmpty || contact.isEmpty || about.isEmpty)
            }
            .scrollContentBackground(.hidden)
            
        }
    }
    
}

struct createClub_Previews: PreviewProvider {
    static var previews: some View {
        createClub()
    }
}




