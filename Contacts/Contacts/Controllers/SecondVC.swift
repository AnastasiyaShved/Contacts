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
    private var person = DataSource()
    
    
//MARK: - life circle -
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension SecondVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return person.contactsList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = person.contactsList[section]
        return section
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath)
    
        let contact = person.contactsList[indexPath.row]
        cell.textLabel?.text = person.personsContact[indexPath.section][indexPath.row]
        print(contact)
        return cell
    }
}

//MARK: - property -
//MARK: - private prorety -
//MARK: - life circle -
//MARK: - actions -
//MARK: - private funcs -
//MARK: - novigation -
