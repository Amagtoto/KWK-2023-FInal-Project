//
//  home.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct home: View {
    var body: some View {
        VStack {
            NavigationStack {
                NavigationLink(destination: joinClub()) {
                    Text("Join Club")
                        .padding()
                        .frame(maxWidth: 130)
                        .background(Color.white.cornerRadius(10))
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.horizontal)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
                    
                        NavigationLink(destination: createClub()) {
                            Text("Create Club")
                                .padding()
                                .frame(maxWidth: 130)
                                .background(Color.black.cornerRadius(10))
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding(.horizontal)
                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
                        }
                    
                }
                .padding([.top, .leading])
            }
        }
    }
    
    struct home_Previews: PreviewProvider {
        static var previews: some View {
            home()
        }
    }
}

