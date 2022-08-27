//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Вячеслав Кремнев on 2/14/22.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = persons[indexPath.row]
        
        content.text = contact.name + " " + contact.surname
        cell.contentConfiguration = content
        
        return cell
    }
   
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as? ContactDetailsViewController
            detailVC?.person = persons[indexPath.row]
        }
    }
}
