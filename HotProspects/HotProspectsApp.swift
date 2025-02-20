//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Lin Ochoa on 2/13/25.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
