//
//  Person.swift
//  ContactList
//
//  Created by Вячеслав Кремнев on 2/14/22.
//

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
extension Person {
    
    static func getContacts() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.userData.names.shuffled()
        let surnames = DataManager.userData.surnames.shuffled()
        let emails = DataManager.userData.emails.shuffled()
        let phoneNumbers = DataManager.userData.phoneNumbers.shuffled()
        
        let totalUserInfo = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<totalUserInfo {
            let person = Person(name: names[index], surname: surnames[index], email: emails[index], phoneNumber: phoneNumbers[index])
            
            persons.append(person)
        }
        return persons
    }
}


    
    
