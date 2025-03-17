//
//  AppStoreagePraticeApp.swift
//  AppStoreagePratice
//
//  Created by shashwat singh on 17/03/25.
//

import SwiftUI

@main
struct AppStoreagePraticeApp: App {
    @AppStorage("isONBoarded") var isONBoarded: Bool = false
    var body: some Scene {
        WindowGroup {
            if isONBoarded{
                HomeView()
            }
            else{
                ContentView()
            }
        }
    }
}
