//
//  createClub.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct createClub: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Create Club")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .position(x:95, y:40)
                TextField("Class Name", text: Value)
                        .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1)
                
            }
            .navigationTitle("ClubHub")
        }
    }
}

struct createClub_Previews: PreviewProvider {
    static var previews: some View {
        createClub()
    }
}
