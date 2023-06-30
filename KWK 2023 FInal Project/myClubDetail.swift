//
//  myClubView.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/29/23.
//

import SwiftUI

struct myClubDetail: View {
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
                        Text("Club code:")
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Contact")
                            .font(.title)
                            .fontWeight(.semibold)
                                                
                        Text(club.contact)
                        
                        Spacer()

                        
                        Text("Next Meeting")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("TBD")
                        
                        Spacer()

                        Text("Announcments")
                            .font(.title)
                            .fontWeight(.semibold)
                        
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

struct myClubDetail_Previews: PreviewProvider {
    static var previews: some View {
        myClubDetail(club: clubList.clubs.first!)
    }
}
