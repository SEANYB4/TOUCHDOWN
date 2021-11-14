//
//  TOUCHDOWNApp.swift
//  TOUCHDOWN
//
//  Created by Sean Bain on 08/11/2021.
//

import SwiftUI

@main
struct TOUCHDOWNApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
