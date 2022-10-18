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
        
        let namesOfHumans = DataManager.infoData.names.shuffled()
        let lastNamesOfHumans = DataManager.infoData.lastNames.shuffled()
        let phoneNumbers = DataManager.infoData.phoneNumbers.shuffled()
        let emailAdresses = DataManager.infoData.emails.shuffled()
        let photos = DataManager.infoData.photos.shuffled()
        
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
