//
//  ContentView.swift
//  praticeEnivromentalprotocol
//
//  Created by shashwat singh on 04/03/25.
//

import SwiftUI
import Observation


struct ContentView: View {
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                VStack{
//                    Toggle("change the theme", isOn: $userdefault.DarkTheme)
//                        .padding() g
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
}
