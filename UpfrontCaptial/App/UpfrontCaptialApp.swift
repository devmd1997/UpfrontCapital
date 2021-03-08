//
//  UpfrontCaptialApp.swift
//  UpfrontCaptial
//
//  Created by Devon Adams on 3/8/21.
//

import SwiftUI

@main
struct UpfrontCaptialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
