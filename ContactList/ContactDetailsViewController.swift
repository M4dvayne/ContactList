//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Вячеслав Кремнев on 2/15/22.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }

}
