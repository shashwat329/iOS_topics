//
//  MVpatternApp.swift
//  MVpattern
//
//  Created by shashwat singh on 18/05/25.
//

import SwiftUI

@main
struct MVpatternApp: App {
    
    @StateObject private var StoreModel = storeModel(webservice: WebService())
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(StoreModel)
        }
    }
}
