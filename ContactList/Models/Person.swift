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
    
    var rows: [String] {
        [phoneNumber, emailAdress]
    }
    
    var fullname: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getPersonData() -> [Person] {
        
        var persons: [Person] = []
        
        let namesOfHumans = DataStore.shared.names.shuffled()
        let lastNamesOfHumans = DataStore.shared.lastNames.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        let emailAdresses = DataStore.shared.emails.shuffled()
        let photos = DataStore.shared.photos.shuffled()
        
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
