//
//  DataSorse.swift
//  Contacts
//
//  Created by Apple on 14.09.23.
//

import Foundation

class DataSource {
    var contacts: [String] = []
    
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
    
    private func fillingContactList () {
        for i in 0 ..< names.count {
            let nameIndex = Int.random(in: 0...names.count-i)
            let surNameIndex = Int.random(in: 0...surName.count-i)
            contacts.append(names [nameIndex] + surName[nameIndex])
            names.remove(at: nameIndex)
            surName.remove(at: surNameIndex)
        }
   
    }
    
    
    
}
