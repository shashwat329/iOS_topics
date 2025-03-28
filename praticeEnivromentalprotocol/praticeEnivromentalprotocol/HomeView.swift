//
//  HomeView.swift
//  praticeEnivromentalprotocol
//
//  Created by shashwat singh on 04/03/25.
//

import SwiftUI

struct HomeView: View {
    @Environment(userDefault.self) private var isON: userDefault
    var body: some View {
        ZStack{
            Color(isON.DarkTheme ? .black: .pink)
                .ignoresSafeArea()
            TabView{
                FirstView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                SecondView()
                    .tabItem{
                        Image(systemName: "music.note")
                        Text("Music")
                    }
                FeedbackView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("feedback")
                    }
                AccountView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Account")
                    }
            }
        }
    }
}

#Preview {
    HomeView()
        .environment(userDefault())
}
