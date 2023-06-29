//
//  newNavbar.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/28/23.
//


//Only for navbar Don't delete


import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case calendar
    case plus
    case book
    case message
}

struct newNavbar: View {
    
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ""
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? .black : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct newNavbar_Previews: PreviewProvider {
    static var previews: some View {
        newNavbar(selectedTab: .constant(.plus))
    }
}
