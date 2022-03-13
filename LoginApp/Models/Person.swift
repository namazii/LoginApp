//
//  Person.swift
//  LoginApp
//
//  Created by Назар Ткаченко on 13.03.2022.
//

struct Person {
    let name: String
    let surname: String
    let age: Int
    let iLikeIt: String
    static func aboutMe() -> Person {
        Person(
            name: "Nazar",
            surname: "Tkachenko",
            age: 22,
            iLikeIt: "KFC"
        )
    }
}
