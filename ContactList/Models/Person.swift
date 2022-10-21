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
    
    static func getPersonData() -> [Person] {
        var humans: [Person] = []
        
        let namesOfHumans = DataManager.shared.names.shuffled()
        let lastNamesOfHumans = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emailAdresses = DataManager.shared.emails.shuffled()
        let photos = DataManager.shared.photos.shuffled()
        
        for num in 0..<namesOfHumans.count {
            let human = Person(
                name: namesOfHumans[num],
                lastName: lastNamesOfHumans[num],
                phoneNumber: phoneNumbers[num],
                emailAdress: emailAdresses[num],
                photo: photos[num]
            )
            humans.append(human)
        }
        return humans
    }
}
