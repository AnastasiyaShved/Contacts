//
//  FirstVC.swift
//  Contacts
//
//  Created by Apple on 14.09.23.
//

import UIKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var person = DataSource()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension FirstVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.contactsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath)
    
        let contact = person.contactsList[indexPath.row]
        cell.textLabel?.text = contact
    
        return cell

    }
}
