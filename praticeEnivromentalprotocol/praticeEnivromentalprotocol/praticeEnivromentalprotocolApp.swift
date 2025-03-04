//
//  praticeEnivromentalprotocolApp.swift
//  praticeEnivromentalprotocol
//
//  Created by shashwat singh on 04/03/25.
//

import SwiftUI
import Observation

@Observable
class userDefault{
    var DarkTheme: Bool = false
}

@main
struct praticeEnivromentalprotocolApp: App {
    @State private var darktheme = userDefault()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(darktheme)
        }
    }
}
