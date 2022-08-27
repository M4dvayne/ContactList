//
//  ChooseContactViewController.swift
//  ContactList
//
//  Created by Вячеслав Кремнев on 2/17/22.
//

import UIKit

class ChooseContactViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let persons = Person.getContacts()
        guard let contactListVC = viewControllers?.first as? ContactListViewController else {return}
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else {return}
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
