//
//  myClubs.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct directory: View {
    //Variable for the plus icon
    @State var showingNewView = false
    
    
    var clubs: [Club] = clubList.clubs
    var newClubs: [Club] = ClubList.clubs2
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Directory")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.vertical)
                
                //CLUB CELLS
                Form {
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
                    //Combine directory list and new clubs list
                List(newClubs, id:\.id) { club in
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
                .scrollContentBackground(.hidden)

            }
            .listStyle(.plain)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .scrollIndicators(.hidden)
        }
    }
}

struct directory_Previews: PreviewProvider {
    static var previews: some View {
        directory()
    }
}

