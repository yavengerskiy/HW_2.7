//
//  Person.swift
//  HW_2.7
//
//  Created by Beelab_ on 09/11/21.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
