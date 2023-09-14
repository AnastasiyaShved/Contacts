//
//  DataSorse.swift
//  Contacts
//
//  Created by Apple on 14.09.23.
//

import Foundation



class DataSource {

    lazy var contactsList: [String] = fillingContactList()
    
    var personsContact: [[String]] = [
        ["name1@mail.com", "+375 29 111 11 11"],
        ["name2@mail.com", "+375 29 111 11 12"],
        ["name3@mail.com", "+375 29 111 11 13"],
        ["name4@mail.com", "+375 29 111 11 14"],
        ["name5@mail.com", "+375 29 111 11 15"],
        ["name6@mail.com", "+375 29 111 11 16"],
        ["name7@mail.com", "+375 29 111 11 17"],
        ["name8@mail.com", "+375 29 111 11 18"],
        ["name9@mail.com", "+375 29 111 11 19"],
        ["name10@mail.com", "+375 29 111 11 10"]
    ]
    
    
    var names: [String] = ["name1",
                          "name2",
                          "name3",
                          "name4",
                          "name5",
                          "name6",
                          "name7",
                          "name8",
                          "name9",
                          "name10"]
    var surName: [String] = [" surName1",
                             " surName2",
                             " surName3",
                             " surName4",
                             " surName5",
                             " surName6",
                             " surName7",
                             " surName8",
                             " surName9",
                             " surName10"]

    private func fillingContactList() -> [String] {
        var result = [String]()
        for i in 0 ..< names.count {
            let nameIndex = Int.random(in: 0...max(names.count-i-1,0))
            let surNameIndex = Int.random(in: 0...max(surName.count-i-1, 0))
            result.append(names[nameIndex] + surName[surNameIndex])
            names.remove(at: nameIndex)
            surName.remove(at: surNameIndex)
        }
        return result
    }
}


