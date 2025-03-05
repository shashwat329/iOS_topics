//
//  FeedbackView.swift
//  praticeEnivromentalprotocol
//
//  Created by shashwat singh on 04/03/25.
//

import SwiftUI

struct FeedbackView: View {
    @Environment(userDefault.self) private var isOn: userDefault
    var body: some View {
        ZStack{
            Color(isOn.DarkTheme ? .black: .pink)
                .ignoresSafeArea()
            VStack{
                Text("this is Feedback page!!")
            }
        }
    }
}

#Preview {
    FeedbackView()
        .environment(userDefault())
}
