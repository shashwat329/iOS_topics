//
//  EnivormentApp.swift
//  Enivorment
//
//  Created by shashwat singh on 18/02/25.
//

import SwiftUI

@main
struct EnivormentApp: App {
    
    @State private var userInfo = UserInfo()
    
    var body: some Scene {
       
        WindowGroup {
            NavigationStack{
                ContentView()
                    .environment(userInfo)
            }
        }
    }
}
