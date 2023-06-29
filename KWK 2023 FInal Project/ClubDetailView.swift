//
//  ClubDetailView.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/27/23.
//

import SwiftUI

struct ClubDetailView: View {
    var club: Club
    var body: some View {
        ScrollView {
            VStack {
                Image(club.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity, alignment: .top)
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 8){
                        Text(club.clubName)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(club.roomNumber)
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    
                    Divider()
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Contact")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text(club.contact)
                        
                        Spacer()
                        
                        Text("About")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text(club.about)
                    }
                }
                .frame(maxWidth: .infinity,  alignment: .leading)
                .padding()
                
            }
            
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
    }
}

struct ClubDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ClubDetailView(club: clubList.clubs.first!)
    }
}
