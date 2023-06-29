//
//  KWK_2023_FInal_ProjectApp.swift
//  KWK 2023 FInal Project
//
//  Created by Angela Magtoto on 6/26/23.
//

import SwiftUI

@main
struct KWK_2023_FInal_ProjectApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            intro().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
