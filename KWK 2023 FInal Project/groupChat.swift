//
//  groupChat.swift
//  KWK 2023 FInal Project
//
//  Created by Angela Magtoto on 6/29/23.
//

import SwiftUI

struct groupChat: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Group Chat")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical)
            Text("is a work in progress...")
                .font(.title3)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        
    }
}

struct groupChat_Previews: PreviewProvider {
    static var previews: some View {
        groupChat()
    }
}
