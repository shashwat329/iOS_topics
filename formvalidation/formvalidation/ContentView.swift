//
//  ContentView.swift
//  formvalidation
//
//  Created by shashwat singh on 19/05/25.
//

import SwiftUI


struct ContentView: View {
    @State private var loginmodel = loginViewModel()
    @State private var loginsuccessful:Bool = false
    var body: some View {
        VStack {
            Form{
                TextField("Email",text: $loginmodel.email)
                    .autocapitalization(.none)
                if let emailmsg = loginmodel.emailmsg{
                    Text(emailmsg.localizedDescription)
                        .foregroundStyle(.red)
                        .font(.caption)
                }
                SecureField("Password",text: $loginmodel.password)
                    .autocapitalization(.none)
                if let passwordmsg = loginmodel.passwordmsg{
                    Text(passwordmsg.localizedDescription)
                        .foregroundStyle(.red)
                        .font(.caption)
                }
                
                Button("login") {
                    if loginmodel.validateForm(){
                        loginsuccessful = true
                        print("success")
                    }
                }
                .alert(isPresented: $loginsuccessful) {
                    Alert(title: Text("Form Submited Successfully"))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
