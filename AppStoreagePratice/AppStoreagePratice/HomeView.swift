//
//  HomeView.swift
//  AppStoreagePratice
//
//  Created by shashwat singh on 17/03/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            TabView{
                Text("First Tab")
                    .tabItem{
                        Image(systemName: "house")
                        Text("First")
                    }
                Text("Second Tab")
                    .tabItem{
                        Image(systemName: "music.note")
                        Text("Second")
                }
                Text("Third Tab")
                    .tabItem{
                        Image(systemName: "cart")
                        Text("Third")
                    }
                
            }
        }
    }
}

#Preview {
    HomeView()
}
