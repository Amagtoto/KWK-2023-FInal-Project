//
//  testNewNavbar.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/28/23.
//

//!!! THIS PAGE CONTROLS EVERY VIEW !!! (don't add navbar to other pages)

import SwiftUI

struct Navigation: View {
    //Plus icon
    @State var showNewScreen: Bool = false
    
    //Switching tabs
    @State private var selectedTab: Tab = .house
    
    init() {
        UITableView.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    if selectedTab == .house {
                        myClubs()
                    }
                    if selectedTab == .calendar {
                        schedule()
                    }
                    if selectedTab == .plus {
                        home()
                    }
                    if selectedTab == .book {
                        directory()
                    }
                    if selectedTab == .message {
                        myClubs()
                    }
                }
            }
            
            VStack {
                Spacer()
                newNavbar(selectedTab: $selectedTab)
            }
        }
    }
}


struct NewScreen: View {
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding(20)
            })
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
