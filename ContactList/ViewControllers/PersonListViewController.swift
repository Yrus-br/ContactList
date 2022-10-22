//
//  PersonListTableViewController.swift
//  ContactList
//
//  Created by Jorgen Shiller on 18.10.2022.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var personList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.rowHeight = 100
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "сontact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        
        content.text = person.name
        content.secondaryText = person.lastName
        content.image = UIImage(named: person.photo)
        content.imageProperties.maximumSize = CGSize(width: 80, height: 80)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? PersonDetailsViewController else { return }
            detailVC.person = personList[indexPath.row]
        }
    }
}
