//
//  FirstVC.swift
//  Contacts
//
//  Created by Apple on 14.09.23.
//

import UIKit

class FirstVC: UITableViewController {
    
//MARK: - property -
    var persons = PersonData.createPersons().sorted { a, b -> Bool in a.name < b.name }
    private var person = DataSource()
 
//MARK: - life circle -
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
//MARK: - function -
   override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
        header.tintColor = UIColor.blue
        header.textLabel?.font = UIFont(name:"Helvetica-Regular", size: 25)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts list"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath)
    
        let contact = persons[indexPath.row]
        cell.textLabel?.text = contact.surName
        cell.detailTextLabel?.text = contact.name
        return cell
    }
            
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to : IndexPath) {
        let currentContact = persons.remove(at: fromIndexPath.row)
        persons.insert(currentContact, at: to.row)
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = tableView.indexPathForSelectedRow,
           let vc = segue.destination as? ThirdVC {
            vc.personsData = persons[index.row]
        }
    }
}

