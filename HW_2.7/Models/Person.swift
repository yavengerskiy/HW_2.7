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
        let dataManager = DataManager()
        
        for _ in 0..<10 {
            let firstNameRandomIndex = Int.random(in: 0..<dataManager.firstName.count)
            let lastNameRandomIndex = Int.random(in: 0..<dataManager.lastName.count)
            let phoneRandomIndex = Int.random(in: 0..<dataManager.phoneNumber.count)
            let emailRandomIndex = Int.random(in: 0..<dataManager.email.count)
            
            let person = Person(firstName: dataManager.firstName[firstNameRandomIndex],
                                lastName: dataManager.lastName[lastNameRandomIndex],
                                phoneNumber: dataManager.phoneNumber[phoneRandomIndex],
                                email: dataManager.email[emailRandomIndex])
            
            dataManager.firstName.remove(at: firstNameRandomIndex)
            dataManager.lastName.remove(at: lastNameRandomIndex)
            dataManager.phoneNumber.remove(at: phoneRandomIndex)
            dataManager.email.remove(at: emailRandomIndex)
            
            
            randomPersonList.append(person)
        }
        
        return randomPersonList
    }
}
