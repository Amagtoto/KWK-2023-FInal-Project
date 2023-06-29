//
//  ScheduleView.swift
//  KWK 2023 FInal Project
//
//  Created by Nicole Lee on 6/28/23.
//

import SwiftUI

struct schedule: View {
    var body: some View {
        NavigationView {
                //Page Heading
                VStack(alignment: .leading) {
                    Text("Schedule")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                //Add your page content here!!!
                    VStack {
                        MultiDatePicker(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Binding<Set<DateComponents>>@*/.constant([])/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                            .background(Color.white)
                            .compositingGroup()
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        
                        
                        Text("Upcoming Events")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding(.vertical)
                        
                        Text("Need to have a button to add more events")
                    
                        
                        List {
                            Text("June 30 - KWK Pitch Party")
                            Text("July 4 - 4th of July")
                            Text("July 5 - AP Scores comes out")
                        }
                        .listStyle(.plain)
                    }
                    .padding(.horizontal)
                            }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal)
                .padding(.vertical)
                .scrollIndicators(.hidden)
            
            
            
            
            
            
            
            //Navigation bar
            .navigationBarItems(
                leading:
                    NavigationLink(destination: myClubs()) {
                        Text("ClubHub")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                    },
                trailing:
                    HStack {
                        NavigationLink(destination: schedule()) {
                            Image(systemName: "calendar")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                        
                        NavigationLink(destination: directory()) {
                            Image(systemName: "menucard.fill")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    
                    })
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct schedule_Previews: PreviewProvider {
    static var previews: some View {
        schedule()
    }
}

