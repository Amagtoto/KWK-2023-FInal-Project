//
//  attendance.swift
//  KWK 2023 FInal Project
//
//  Created by Nicole Lee on 6/28/23.
//

import SwiftUI

struct attendance: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Attendance")
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

struct attendance_Previews: PreviewProvider {
    static var previews: some View {
        attendance()
    }
}
