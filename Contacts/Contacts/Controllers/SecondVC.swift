//
//  SecondVC.swift
//  Contacts
//
//  Created by Apple on 14.09.23.
//

import UIKit

class SecondVC: UIViewController {
    
//MARK: - property -
    @IBOutlet weak var tableView: UITableView!
   
    let persons = PersonData.createPersons().sorted { a, b -> Bool in a.surName < b.surName }

//MARK: - life circle -
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}
//MARK: - extension -
extension SecondVC: UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    

    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = persons[section]
        
        return section.name + " " + section.surName
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath)

        let contact = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? contact.email : contact.phonNumber
        return cell
    }
}
