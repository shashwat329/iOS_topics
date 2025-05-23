//
//  Coffee_Order_AppApp.swift
//  Coffee Order App
//
//  Created by shashwat singh on 22/05/25.
//

import SwiftUI

@main
struct Coffee_Order_AppApp: App {
    @StateObject private var model: CoffeeModel
    init() {
        let webservice = WebService()
        _model = StateObject (wrappedValue: CoffeeModel(webservice: webservice))
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
