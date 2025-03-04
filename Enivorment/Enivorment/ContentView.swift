//
//  ContentView.swift
//  Enivorment
//
//  Created by shashwat singh on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                Text("Logo")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.orange)
                NavigationLink {
                    BasicInfoView()
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(maxWidth: .infinity,maxHeight: 60)
                        .overlay {
                            Text("Get Started")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                    
                }.padding()
                
            }
        .padding()
    }
}

#Preview {
    NavigationStack{
        ContentView()
    }
}
