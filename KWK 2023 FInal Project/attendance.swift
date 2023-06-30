//
//  attendance.swift
//  KWK 2023 FInal Project
//
//  Created by Nicole Lee on 6/28/23.
//

import SwiftUI

struct attendance: View {
    @State var showGreeting = true
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Attendance")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.vertical)
                        Text("        Push button if you attended the meetings!")
                        Toggle(isOn: $showGreeting){
                            Text("7/1")
                            if showGreeting{
                                Text("Nice Job")
                            }
                            
                        }.padding()
                        VStack {
                            Toggle(isOn: $showGreeting){
                                Text("7/2")
                                if showGreeting{
                                    Text("Nice Job")
                                    
                                }}
                            
                        }.padding()
                        Toggle(isOn: $showGreeting){
                            Text("7/3")
                            if showGreeting{
                                Text("Nice Job")
                            }
                            
                        }.padding()
                        Toggle(isOn: $showGreeting){
                            Text("7/4")
                            if showGreeting{
                                Text("Nice Job")
                            }
                            
                        }.padding()
                        Toggle(isOn: $showGreeting){
                            Text("7/5")
                            if showGreeting{
                                Text("Nice Job")
                            }
                            
                        }.padding()
                        Toggle(isOn: $showGreeting){
                            Text("7/6")
                            if showGreeting{
                                Text("Nice Job")
                            }
                            
                        }.padding()
                        Toggle(isOn: $showGreeting){
                            Text("7/7")
                            if showGreeting{
                                Text("Nice Job")
                            }
                            
                        }.padding()
                        Toggle(isOn: $showGreeting){
                            Text("7/8")
                            if showGreeting{
                                Text("Nice Job")
                            }
                            
                        }.padding()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                
            }
            
        }
        
        struct
attendance_Previews: PreviewProvider {
            static var previews: some View {
                attendance()
            }
        }
    
