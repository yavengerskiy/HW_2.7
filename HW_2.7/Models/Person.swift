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

extension Person {
    static func getRandomPersonList() -> [Person] {
        var randomPersonList: [Person] = []
        
        for _ in 0...10 {
            let person = Person(firstName: DataManager.firstName[Int.random(in: 0..<DataManager.firstName.count)],
                                lastName: DataManager.lastName[Int.random(in: 0..<DataManager.lastName.count)],
                                phoneNumber: DataManager.phoneNumber[Int.random(in: 0..<DataManager.phoneNumber.count)],
                                email: DataManager.email[Int.random(in: 0..<DataManager.email.count)])
            
            randomPersonList.append(person)
        }
        
        return randomPersonList
    }
}
