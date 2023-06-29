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
                
                NavigationLink(destination: myClubs()) {
                                Text("Next")
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                  
//                NavigationStack {
//
//                    Button {
//                    }
//                label: {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 10)
//                            .padding(.top)
//                            .foregroundColor(Color.black)
//                        NavigationLink("Join", destination: myClubs())
//                            .padding([.top, .leading])
//                            .font(.title3)
//                            .foregroundColor(Color(hue: 1.0, saturation: 0.045, brightness: 0.966))
//                            .multilineTextAlignment(.center)
//                    }
//                }
                }
            .padding(.bottom)
            }
        }
    }


struct createClub_Previews: PreviewProvider {
    static var previews: some View {
        createClub()
    }
}





