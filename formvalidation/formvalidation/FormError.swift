//
//  FormError.swift
//  formvalidation
//
//  Created by shashwat singh on 20/05/25.
//

import Foundation

enum FormError: Error ,LocalizedError{
    case emailempty
    case emailwrongformat
    case passwordempty
    case wromgpasswordsize
    
    
    var errorDescription: String?{
        switch self {
            case .emailempty:
                return "Email cant be empty";
            case .emailwrongformat:
                return "Email format is wrong";
            case .passwordempty:
                return "Password canr be empty";
            case .wromgpasswordsize:
                return "Password should be atleast 6 characters long";
        }
    }
}
