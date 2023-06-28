//
//  ContentView.swift
//  KWK 2023 FInal Project
//
//  Created by Angela Magtoto on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
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
            .navigationTitle("ClubHub")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
