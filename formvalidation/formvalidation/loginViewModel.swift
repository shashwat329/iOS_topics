//
//  loginViewModel.swift
//  formvalidation
//
//  Created by shashwat singh on 20/05/25.
//

import Foundation

struct loginViewModel {
    var email: String = ""
    var password: String = ""
    var emailmsg: FormError?
    var passwordmsg: FormError?
    
    mutating func validateForm() -> Bool {
        emailmsg = nil
        passwordmsg = nil
        if email.isEmpty {
            emailmsg = .emailempty
        }else if !email.isValidEmail(){
            emailmsg = .emailwrongformat
        }
        if password.isEmpty{
            passwordmsg = FormError.passwordempty
        }
        else if password.count < 6{
            passwordmsg = FormError.wromgpasswordsize
        }
        return emailmsg == nil && passwordmsg == nil 
    }

}
