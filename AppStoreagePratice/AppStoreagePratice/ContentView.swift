//
//  ContentView.swift
//  AppStoreagePratice
//
//  Created by shashwat singh on 17/03/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isONBoarded") var isONBoarded: Bool = false
    var body: some View {
        VStack {
            Text("LOGO")
                .font(.largeTitle)
                .foregroundStyle(.orange)
            Button {
                isONBoarded = true
            } label: {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.green)
                    .frame(width: 200, height: 50)
                    .overlay(
                        Text("Get Started")
                            .font(.headline)
                            .foregroundColor(.white)
                    )
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
