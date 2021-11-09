//
//  PersonListViewController.swift
//  HW_2.7
//
//  Created by Beelab_ on 09/11/21.
//

import UIKit

class PersonListViewController: UITableViewController {
    private let model = DataManager.globalInstance
    private var personList: [Person] = DataManager.globalInstance.personsList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personList = model.personsList
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = personList[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? PersonDetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        personDetailVC.person = person
    }
}
