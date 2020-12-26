//
//  StateChangeUpdateTestApp.swift
//  StateChangeUpdateTest
//
//  Created by Russell Gordon on 2020-12-26.
//

import SwiftUI

@main
struct StateChangeUpdateTestApp: App {
    
    @StateObject var model = Items()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
