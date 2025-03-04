//
//  BasicInfoView.swift
//  Enivorment
//
//  Created by shashwat singh on 18/02/25.
//

import SwiftUI
import Observation

@Observable
class UserInfo{
    var name: String = ""
    var age: String = ""
}
struct BasicInfoView: View {
    @Environment(UserInfo.self) var userInfo
    var body: some View {
        @Bindable var userInfo = userInfo
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                    .frame(maxWidth: .infinity,maxHeight: 60)
                TextField("Enter Your Name", text: $userInfo.name)
                    .font(.title)
                    .keyboardType(.alphabet)
                    .padding()
            }
            .padding(.horizontal)
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                    .frame(maxWidth: .infinity,maxHeight: 60)
                TextField("Enter your age", text: $userInfo.age)
                    .font(.title)
                    .keyboardType(.numberPad)
                    .padding()
            }
            .padding(.horizontal)
            NavigationLink {
                HomeView()
            } label: {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(maxWidth: .infinity,maxHeight: 70)
                    .overlay {
                        Text("Submit")
                            .foregroundStyle(Color.white)
                            .font(.largeTitle)
                    }
            }
            .padding()
            .padding()

        }
    }
}

#Preview {
    BasicInfoView()
        .environment(UserInfo())
}
