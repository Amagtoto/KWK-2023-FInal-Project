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
        
        VStack {
            Text("Join Club")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)
                .padding(.top)
            Form {
                
                TextField("Club code", text: $clubCode)
                    .padding(.top)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                Button {
                    //add create new club action
                    
                }
            label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.black)
                    NavigationLink("Join", destination: myClubs())
                        .padding(.leading)
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                }
            }
            .padding(.bottom)
            }
        }
    }
}

struct joinClub_Previews: PreviewProvider {
    static var previews: some View {
        joinClub()
    }
}
