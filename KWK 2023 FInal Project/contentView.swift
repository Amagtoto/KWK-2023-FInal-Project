//
//  ContentView.swift
//  KWK 2023 FInal Project
//
//  Created by Angela Magtoto on 6/26/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
                //Page Heading
                VStack(alignment: .leading) {
                    Text("My Clubs")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                //Add your page content here!!!
                    VStack(alignment: .center) {
                        
                        Text("To get started...")
                            .font(.title)
                            .fontWeight(.bold)
                            
                        
                        NavigationLink(destination: createClub()) {
                            Text("Create Club")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding(.top)
                            
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .padding([.top, .leading])
                                .frame(width: 125.0, height: 60.0)
                                .foregroundColor(Color.black)
                            NavigationLink(destination: joinClub()) {
                                Text("Join Club")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding([.top, .leading])
                            }
                            }

                        }
                        .padding([.top, .leading])

                    }
                            }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal)
                .padding(.vertical)
                .scrollIndicators(.hidden)
            
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

struct noClubs_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


