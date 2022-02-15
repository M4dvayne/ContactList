//
//  Person.swift
//  ContactList
//
//  Created by Вячеслав Кремнев on 2/14/22.
//

struct Person {


    let detailInfo: DataManager
    

    
    static func getPerson() -> DataManager {
        
        DataManager(
            names: [
                "Corey", "Mick", "James", "Joey", "Tom", "Elon", "Ryan", "Carl", "Tom", "Christopher", "Johnatan"
            ],
            surnames: [
                "Taylor","Thompson", "Root", "Jordison", "Smith", "Musk", "Greenwood", "Washington", "Parker", "Nolan", "Davis"
            ],
            emails: [
                "taylor@gmail.com", "thompson@gmail.com", "root@gmail.com", "jordisson@gmail.com", "smith@gmail.com", "spaceX@gmail.com", "ryan@gmail.com", "washington@gmail.com", "tomParker@gmail.com", "avatar@gmail.com", "davis@gmail.com"
            ],
            phoneNumbers: [
                "+1 999 888 9999", "+1 999 888 9998", "+1 999 888 9997", "+1 999 888 9996", "+1 999 888 9995", "+1 999 888 9994", "+1 999 888 9993" ,"+1 999 888 9993", "+1 999 888 9992", "+1 999 888 9991", "+1 999 888 9990"
            ]
        )
        
    }
}

    class DataManager {
        var names: [String]
        var surnames: [String]
        var emails: [String]
        var phoneNumbers: [String]
        
        init(names: [String], surnames: [String], emails: [String], phoneNumbers: [String]) {
            self.names = names
            self.surnames = surnames
            self.emails = emails
            self.phoneNumbers = phoneNumbers
        }
    }







