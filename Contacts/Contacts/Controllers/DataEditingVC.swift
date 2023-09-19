//
//  DataEditingVC.swift
//  Contacts
//
//  Created by Apple on 19.09.23.
//

import UIKit

class DataEditingVC: UIViewController {
//MARK: - property -
    var personsDataforediting: Person?
    
    @IBOutlet weak var nameEditing: UITextField!
    @IBOutlet weak var surNameEditing: UITextField!
    @IBOutlet weak var emailEditing: UITextField!
    @IBOutlet weak var phoneNumberEditing: UITextField!
    
//MARK: - life circle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameEditing.text = personsDataforediting?.name
        surNameEditing.text = personsDataforediting?.surName
        emailEditing.text = personsDataforediting?.email
        phoneNumberEditing.text = personsDataforediting?.phonNumber
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
