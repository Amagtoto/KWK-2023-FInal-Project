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
        VStack {
                   ForEach(ClubList.clubs2) { club in
                       Text("Club Name:" + club.clubName)
                   }
            if ClubList.clubs2.count > 0 {
                //Text("hi")
            }
               }
    }
}

struct myClubs_Previews: PreviewProvider {
    static var previews: some View {
        myClubs()
    }
}
