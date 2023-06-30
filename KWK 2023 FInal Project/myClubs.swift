//
//  Directory.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/27/23.
//

import SwiftUI

struct myClubs: View {
    
    var clubs: [Club] = ClubList.clubs2
    var body: some View {
        //Display some text if user has no clubs
        if ClubList.clubs2.isEmpty {
                VStack {
                        Text("To get started press the + Button!")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .padding(.vertical)
                }

            } else {
            NavigationStack {
                VStack(alignment: .leading) {
                    Text("My Clubs")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.vertical)
                    
                    //CLUB CELLS
                    List(clubs, id:\.id) { club in
                        HStack(spacing: 15) {
                            NavigationLink(destination: myClubDetail(club: club)) {
                                
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
                .listStyle(.plain)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .scrollIndicators(.hidden)
            }
        }
 
    }
}

struct myClubs_Previews: PreviewProvider {
    static var previews: some View {
        myClubs()
    }
}


