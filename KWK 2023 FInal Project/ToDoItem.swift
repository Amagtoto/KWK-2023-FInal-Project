//
//  ToDoItem.swift
//  KWK 2023 FInal Project
//
//  Created by Nicole Lee on 6/28/23.
//

import Foundation

class ToDoItem: Identifiable {
    
    var id = UUID()

    var title = ""
    
    init(title: String) {
        self.title = title
    }
}
