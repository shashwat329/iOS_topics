//
//  HomeView.swift
//  MVpattern
//
//  Created by shashwat singh on 18/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                }
            PriceView()
                .tabItem {
                    Image(systemName: "indianrupeesign")
                }
        }
    }
}

#Preview {
    HomeView().environmentObject(storeModel(webservice: WebService()))
}
