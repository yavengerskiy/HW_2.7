//
//  PersonDetailViewController.swift
//  HW_2.7
//
//  Created by Beelab_ on 09/11/21.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: +\(person.phoneNumber)"
        emailLabel.text = "E-mail: \(person.email)"
    }
    
}
