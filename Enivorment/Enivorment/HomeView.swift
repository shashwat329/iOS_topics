//
//  HomeView.swift
//  Enivorment
//
//  Created by shashwat singh on 18/02/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        TabView{
            FirstPage()
                .tabItem{
                    Label("home", systemImage: "house.fill")
                }
            SecondPage()
                .tabItem{
                    Label("Account", systemImage: "person.fill")
                }
            }
    }
}

#Preview {
    HomeView()
}
