//
//  loginViewModel 2.swift
//  formvalidation
//
//  Created by shashwat singh on 20/05/25.
//

import Foundation

struct loginViewModel {
    var email: String = ""
    var password: String = ""
    var emailmsg: String = ""
    var passwordmsg: String = ""
    
    mutating func validateForm() -> Bool {
        emailmsg = ""
        passwordmsg = ""
        if email.isEmpty {
            emailmsg = "Email is required"
        }else if !email.isValidEmail(){
            emailmsg = "Email is not in correct format"
        }
        if password.isEmpty{
            passwordmsg = "Password is requied"
        }
        return emailmsg.isEmpty && passwordmsg.isEmpty
    }

}
