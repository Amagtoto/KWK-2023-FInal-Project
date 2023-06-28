//
//  Directory.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/27/23.
//

import SwiftUI

struct directory: View {
    
    var clubs: [Club] = clubList.clubs
    var body: some View {
        NavigationView {
            //ADD PAGE CONTENT IN ScrollView

                //Directory Heading
                VStack(alignment: .leading) {
                    Text("Directory")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    //Nested CELL
                    List(clubs, id:\.id) { club in
                        HStack(spacing: 15) {
                            NavigationLink(destination: ClubDetailView(club: club)) {
                            
                            Image(club.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 70)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 1) {
                                Text(club.clubName)
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.75)
                                
                                Text(club.roomNumber)
                                
                                Text(club.advisor)
                                    .foregroundColor(.secondary)


                                Text(club.category)
                                    .font(.subheadline)
                            }
                        }
                    }
                        .padding(.vertical)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal)
                .padding(.vertical)
                .scrollIndicators(.hidden)
            
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

struct directory_Previews: PreviewProvider {
    static var previews: some View {
        directory()
    }
}
