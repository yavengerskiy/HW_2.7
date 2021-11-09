//
//  PersonListWithDetailsViewController.swift
//  HW_2.7
//
//  Created by Beelab_ on 09/11/21.
//

import UIKit

class PersonListWithDetailsViewController: UITableViewController {
    private let model = DataManager.globalInstance
    private var personList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personList = model.personsList
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personwithdetails", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = personList[indexPath.section].phoneNumber
            content.image = UIImage.init(systemName: "phone")
        } else {
            content.text = personList[indexPath.section].email
            content.image = UIImage.init(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
