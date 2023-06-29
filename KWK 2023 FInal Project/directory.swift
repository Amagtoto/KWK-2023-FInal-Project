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
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Directory")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.vertical)
                
                //CLUB CELLS
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
