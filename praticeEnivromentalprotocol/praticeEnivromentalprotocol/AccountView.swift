//
//  AccountView.swift
//  praticeEnivromentalprotocol
//
//  Created by shashwat singh on 04/03/25.
//

import SwiftUI

struct AccountView: View {
    @Environment(userDefault.self) private var isON : userDefault
    var body: some View {
        ZStack{
            Color(isON.DarkTheme ? .black: .pink)
                .ignoresSafeArea()
            VStack{
                Text("this is account page!!")
            }
        }
    }
}

#Preview {
    AccountView()
        .environment(userDefault())
}
