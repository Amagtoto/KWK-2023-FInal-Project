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
        NavigationView {
                //Page Heading
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
                        //add create new club action
                        
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
                           
                        
                       
                        // Text("Join")
                            //.font(.headline)
                            //.fontWeight(.bold)
                            //.foregroundColor(Color.white)
                    
                           
                    }
                }
                .padding(.bottom)
                }
            }
                    
            
            //Navigation bar
            .navigationBarItems(
                leading:
                    NavigationLink(destination: myClubs()) {
                        Text("ClubHub")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                    },
                
                trailing:
                    HStack {
                        NavigationLink(destination: schedule()) {
                            Image(systemName: "calendar")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                        
                        NavigationLink(destination: directory()) {
                            Image(systemName: "menucard.fill")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    
                    })
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
    }

struct createClub_Previews: PreviewProvider {
    static var previews: some View {
        createClub()
    }
}




       
