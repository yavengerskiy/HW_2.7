//
//  PersonListWithDetailsViewController.swift
//  HW_2.7
//
//  Created by Beelab_ on 09/11/21.
//

import UIKit

class PersonListWithDetailsViewController: UITableViewController {
    private let personlist = Person.getRandomPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personlist.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personlist[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personwithdetails", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = personlist[indexPath.section].phoneNumber
            content.image = UIImage.init(systemName: "phone")
        } else {
            content.text = personlist[indexPath.section].email
            content.image = UIImage.init(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
