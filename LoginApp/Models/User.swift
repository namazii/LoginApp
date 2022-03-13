//
//  User.swift
//  LoginApp
//
//  Created by Назар Ткаченко on 13.03.2022.
//

struct User {
    let userName: String
    let password: String
    static func userData() -> User {
        User(userName: "User", password: "Password")
    }
    
}
