//
//  Person.swift
//  ContactList
//
//  Created by Jorgen Shiller on 18.10.2022.
//

struct Person {
    let name: String
    let lastName: String
    let phoneNumber: String
    let emailAdress: String
    let photo: String
    
    var fullname: String {
        "\(name) \(lastName)"
    }
}


extension Person {
    static func getPersonData() -> [Person] {
        
        var persons: [Person] = []
        
        let namesOfHumans = DataManager.shared.names.shuffled()
        let lastNamesOfHumans = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emailAdresses = DataManager.shared.emails.shuffled()
        let photos = DataManager.shared.photos.shuffled()
        
        let iterationCount = min(
            namesOfHumans.count,
            lastNamesOfHumans.count,
            phoneNumbers.count,
            emailAdresses.count,
            photos.count
        )
        
        for index in 0..<iterationCount {
            let human = Person(
                name: namesOfHumans[index],
                lastName: lastNamesOfHumans[index],
                phoneNumber: phoneNumbers[index],
                emailAdress: emailAdresses[index],
                photo: photos[index]
            )
            persons.append(human)
        }
        
        return persons
    }
}
