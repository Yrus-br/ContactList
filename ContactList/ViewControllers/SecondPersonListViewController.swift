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
        persons[section].rows.count
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
        return person.fullname
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel(frame: CGRect(
            x: 16,
            y: 4,
            width: tableView.frame.width,
            height: 20
        )
        )
        label.text = persons[section].fullname
        label.font = .boldSystemFont(ofSize: 17)
        let contentView = UIView()
        contentView.addSubview(label)
        
        return contentView
    }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .systemYellow
    }
}
