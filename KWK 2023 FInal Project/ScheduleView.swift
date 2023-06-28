//
//  ScheduleView.swift
//  KWK 2023 FInal Project
//
//  Created by Nicole Lee on 6/28/23.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        VStack {
            Text("Schedule")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
                .padding(.vertical)
            HStack() {
                Text("KWK Demo Day")
                    .padding([.top, .bottom, .trailing])
                Button("X") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding(.horizontal)
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
                .tint(.black)
                Button("✓") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }

                .padding(.trailing)
                .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
                .tint(.black)
            }
            .padding(.horizontal)
            .background(Color.white)
            .compositingGroup()
            .shadow(color: Color.black, radius: 3, x: 0, y: 0)
            
            Text(" ")
            
            MultiDatePicker(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Binding<Set<DateComponents>>@*/.constant([])/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                .background(Color.white)
                .compositingGroup()
                .shadow(color: Color.black, radius: 5, x: 0, y: 0)
            
            Text(" ")
            Text("Upcoming Events")
                .font(.title)
                .fontWeight(.heavy)
            List {
                
                Text("June 30 - KWK Pitch Party")
                Text("July 4 - 4th of July")
                Text("July 5 - AP Scores comes out")
            }
            .listStyle(.sidebar)
            
            
            
            
            Button("View Attendance") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
        }
        .padding(.horizontal)
        
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
