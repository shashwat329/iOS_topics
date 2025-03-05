//
//  FirstView.swift
//  praticeEnivromentalprotocol
//
//  Created by shashwat singh on 04/03/25.
//

import SwiftUI

struct FirstView: View {
    @Environment(userDefault.self) private var isON: userDefault
    var body: some View {
        ZStack{
            Color(isON.DarkTheme ? .black: .pink)
                .ignoresSafeArea()
            VStack{
                Text("this is First View!!")
            }
        }
    }
}

#Preview {
    FirstView()
        .environment(userDefault())
}
