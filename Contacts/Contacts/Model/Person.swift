//
//  Person.swift
//  Contacts
//
//  Created by Apple on 16.09.23.
//

import Foundation

struct Person {
    let name: String
    let surName: String
    let email: String
    let phonNumber: String
}

struct PersonData {
    
  static func createPersons() -> [Person] {
      
        var persons: [Person] = []
       
        let names = DataSource.names.shuffled()
        let surNames = DataSource.surName.shuffled()
        let emails = DataSource.email.shuffled()
        let phonNumbers = DataSource.phonNumber.shuffled()
        
        for i in 0..<names.count {
            let person = Person(name: names[safe: i] ?? "not name",
                                surName: surNames[safe: i] ?? "not surName",
                                email: emails[safe: i] ?? "not email",
                                phonNumber: phonNumbers[safe: i] ?? "not phonNumber")
            persons.append(person)
        }
      return persons
    }
}

