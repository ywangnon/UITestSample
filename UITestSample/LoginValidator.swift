//
//  LoginValidator.swift
//  UITestSample
//
//  Created by Hansub Yoo on 2022/11/01.
//

import Foundation

class LoginValidator {
    func isVlidEmail(email: String) -> Bool {
        return email.contains("@")
    }
    
    func isVaildPassword(password: String) -> Bool {
        return password.count < 5
    }
}

struct User {
    let email: String
    let password: String
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
