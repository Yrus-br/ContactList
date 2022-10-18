//
//  SecondPersonListViewController.swift
//  ContactList
//
//  Created by Jorgen Shiller on 18.10.2022.
//

import UIKit

class SecondPersonListViewController: UITableViewController {
    
    let persons = Person.getPersonData()
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.phoneNumber
        content.secondaryText = person.emailAdress
        cell.contentConfiguration = content
        return cell
        }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.lastName
    }
}
