//
//  Club.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/27/23.
//


//THIS IS A LIST TO POPULATE THE DIRECTORY

import SwiftUI

struct Club: Identifiable {
    let id = UUID()
    let imageName: String
    let clubName: String
    let roomNumber: String
    let advisor: String
    let category: String
    let contact: String
    let about: String
}

struct clubList {
    
    static let clubs = [
        Club(imageName: "placeholder",
              clubName: "Robotics",
              roomNumber: "Room 407",
              advisor: "Mr. Good",
              category: "STEM",
              contact: "good@gmail.com",
              about: "Build robots!"),
            
        Club(imageName: "placeholder",
              clubName: "Green Team",
              roomNumber: "Room 305",
              advisor: "Mrs. Ekstien",
              category: "Enviroment",
              contact: "ekstien@gmail.com",
              about: "Save the enviroment!"),
        
        Club(imageName: "placeholder",
              clubName: "Key Club",
              roomNumber: "Room 305",
              advisor: "Mrs. Ekstien",
              category: "Community",
              contact: "ekstien@gmail.com",
              about: "Help out the community!"),
        
        Club(imageName: "placeholder",
              clubName: "Girls Who Code",
              roomNumber: "Room 202",
              advisor: "Mr. Sakovitz",
              category: "STEM",
              contact: "sakovitz@gmail.com",
              about: "Learn to code!"),
        
        Club(imageName: "placeholder",
              clubName: "DECA",
              roomNumber: "Room 508",
              advisor: "Mr. Lafi",
              category: "Business",
              contact: "good@gmail.com",
              about: "Learn about entrepreneurship!"),
        
    ]
}

