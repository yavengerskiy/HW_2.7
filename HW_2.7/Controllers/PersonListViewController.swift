//
//  PersonListViewController.swift
//  HW_2.7
//
//  Created by Beelab_ on 09/11/21.
//

import UIKit

class PersonListViewController: UITableViewController {
    private let personlist = Person.getRandomPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personlist.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = personlist[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? PersonDetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personlist[indexPath.row]
        personDetailVC.person = person
    }
}
