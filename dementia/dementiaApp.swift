//
//  dementiaApp.swift
//  dementia
//
//  Created by Allyson Wong on 27/8/2022.
//

import SwiftUI

@main
struct dementiaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup{
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
                
        }
    }

