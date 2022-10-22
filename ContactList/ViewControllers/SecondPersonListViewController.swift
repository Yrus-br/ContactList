//
//  SecondPersonListViewController.swift
//  ContactList
//
//  Created by Jorgen Shiller on 18.10.2022.
//

import UIKit

class SecondPersonListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = indexPath.row == 0
        ? "Phone: \(person.phoneNumber)"
        : "Email: \(person.emailAdress)"
        
        content.image = indexPath.row == 1
        ? UIImage(systemName: "mail")
        : UIImage(systemName: "phone")
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.lastName
    }
}
