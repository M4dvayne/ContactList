//
//  SectionTableViewController.swift
//  ContactList
//
//  Created by Вячеслав Кремнев on 2/17/22.
//

import UIKit

class SectionTableViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
        } else {
            content.secondaryText = person.email
        }
        
        cell.contentConfiguration = content

        return cell
    }
}
