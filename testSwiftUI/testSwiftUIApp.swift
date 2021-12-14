//
//  testSwiftUIApp.swift
//  testSwiftUI
//
//  Created by user on 26/11/21.
//

import SwiftUI

@main
struct testSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StarterScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(Status())
        }
    }
}
