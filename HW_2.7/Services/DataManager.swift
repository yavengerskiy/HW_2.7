//
//  DataManager.swift
//  HW_2.7
//
//  Created by Beelab_ on 09/11/21.
//

class DataManager {
    static let globalInstance = DataManager()
    
    var personsList: [Person]
    
    var firstNames = ["Aleksandr", "Mihail", "Dmitrij", "Ivan",
                      "Daniil", "Roman", "Kirill", "Timofej",
                      "Egor", "Matvej", "Ivan", "Petr"]
    
    var lastNames = ["Ivanov", "Vasil'ev", "Petrov", "Smirnov",
                     "Mihajlov", "Fyodorov", "Sokolov", "YAkovlev",
                     "Popov", "Andreev", "Anikeev", "Sidorov"]
    
    var phoneNumbers = ["200029316909", "064807480976", "514584944701", "661236103339",
                        "665114461301", "002279846273", "056236221250", "304371596953",
                        "195506547360", "445016207602", "546012207103", "235416507672"]
    
    var emails = ["N5FB2Z@gmail.com", "7aFJdb@gmail.com", "QXOgh2@gmail.com", "TmT8dv@gmail.com",
                  "jQ9DOk@gmail.com", "LJ3hyX@gmail.com", "IXijgo@gmail.com", "hcTAIq@gmail.com",
                  "bWHJ9s@gmail.com", "ATinnv@gmail.com", "Ajshfknv@gmail.com", "kdlfjskl@gmail.com"]
    
    init() {
        personsList = [Person]()
        
        firstNames.shuffle()
        lastNames.shuffle()
        phoneNumbers.shuffle()
        emails.shuffle()
        
        for (firstName, (lastName, (phoneNumber, email))) in
                zip(firstNames, zip(lastNames, zip(phoneNumbers, emails))){
            
            let person = Person(firstName: firstName,
                                lastName: lastName,
                                phoneNumber: phoneNumber,
                                email: email)
            
            self.personsList.append(person)
        }
    }
}
