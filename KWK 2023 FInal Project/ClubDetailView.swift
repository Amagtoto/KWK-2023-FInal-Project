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
        ZStack {
            VStack {
                Image(club.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity, alignment: .top)
                Text("Contact")
                    .font(.title)
                    .fontWeight(.bold)
                Text(club.contact)
                Text("About")
                    .font(.title)
                    .fontWeight(.bold)
                Text(club.about)
                    .font(.body)
                    .padding()
                
                
            }
            .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text(club.clubName)
                
                Text(club.roomNumber)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .font(.title)
            .fontWeight(.bold)
            .padding(.horizontal, 10)
        }
    }
}

struct ClubDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ClubDetailView(club: clubList.clubs.first!)
    }
}
