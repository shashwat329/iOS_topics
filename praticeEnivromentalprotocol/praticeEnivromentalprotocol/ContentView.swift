//
//  ContentView.swift
//  praticeEnivromentalprotocol
//
//  Created by shashwat singh on 04/03/25.
//

import SwiftUI
import Observation


struct ContentView: View {
    @Environment(userDefault.self) private var isON: userDefault
    var body: some View {
        @Bindable var userdefault = isON
        NavigationStack{
            ZStack{
                Color(userdefault.DarkTheme ? .black : .pink)
                    .ignoresSafeArea(.all)
                VStack{
                    Toggle("change the theme", isOn: $userdefault.DarkTheme)
                        .padding()
                    Spacer()
                    Text("LOGO")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(Color.orange)
                    NavigationLink {
                        HomeView()
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.secondary)
                            .frame(maxWidth: .infinity,maxHeight: 60)
                            .padding()
                            .overlay{
                                Text("Get Started")
                                    .font(.title)
                                    .foregroundStyle(.white)
                            }
                    }.padding()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(userDefault())
}
