//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Jorgen Shiller on 18.10.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var personImge: UIImageView! {
        didSet {
            personImge.layer.cornerRadius = personImge.frame.height / 2
        }
    }
    @IBOutlet var personEmail: UILabel!
    @IBOutlet var personNumber: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullname
        personImge.image = UIImage(named: person.photo)
        personEmail.text = "📧 Email: \(person.emailAdress)"
        personNumber.text = "📞 Phone: \(person.phoneNumber)"
    }
}
