//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Jorgen Shiller on 22.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let secondPersonVc = viewControllers?.last as? SecondPersonListViewController else { return }
        
        let personData = Person.getPersonData()
        personListVC.personList = personData
        secondPersonVc.persons = personData
    }
}
