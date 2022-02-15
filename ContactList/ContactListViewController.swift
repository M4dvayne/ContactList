//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Вячеслав Кремнев on 2/14/22.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        person.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let contactName = person.names[indexPath.row]
        let contactSurname = person.surnames[indexPath.row]
        content.text = contactName + " " + contactSurname
        
        cell.contentConfiguration = content
        return cell
    }
   
    // MARK: - Navigation

      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactDetailsViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
    }
}
