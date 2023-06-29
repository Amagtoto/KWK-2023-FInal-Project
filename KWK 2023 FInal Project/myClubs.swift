//
//  myClubs.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct myClubs: View {
    //Variable for the plus icon
    @State var showingNewView = false
    
    var body: some View {
            //Page Heading
        VStack(alignment: .leading) {
            Text("My Clubs")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical)
            }
        .listStyle(.plain)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .scrollIndicators(.hidden)
    }
}

struct myClubs_Previews: PreviewProvider {
    static var previews: some View {
        myClubs()
    }
}
