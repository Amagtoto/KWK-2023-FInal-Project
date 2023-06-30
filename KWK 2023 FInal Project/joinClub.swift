//
//  joinClub.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct joinClub: View {
    
    @State var clubCode = ""
    
    var body: some View {
        
        //Page Heading
        
        VStack(alignment: .leading) {
            Text("Join Club")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical)
            Form {
                
                TextField("Club code", text: $clubCode)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                    .font(.title3)
                    .fontWeight(.bold)
                
                
                Button(action: {
                    //Add join club action
    
                }, label: {
                   Text("Join Club")
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black.cornerRadius(10))
                .foregroundColor(.white)
                .font(.headline)


            }
            .scrollContentBackground(.hidden)
        }
    }
}

struct joinClub_Previews: PreviewProvider {
    static var previews: some View {
        joinClub()
    }
}
