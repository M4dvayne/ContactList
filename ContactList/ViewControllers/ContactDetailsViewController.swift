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
    
    var fullName: String!
    var phoneNumber: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
        
        //здесь намудрил с инициализацией(
        
        
    }
}
