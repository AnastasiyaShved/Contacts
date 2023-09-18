//
//  ThirdVC.swift
//  Contacts
//
//  Created by Apple on 18.09.23.
//

import UIKit

class ThirdVC: UIViewController {
    
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var phoneNumberLbl: UILabel!
    
    
    
    var personsData: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let personsData = personsData {
            print(personsData.name + " " + personsData.phonNumber + " " + personsData.email)
            
            navigationItem.title = personsData.name + personsData.surName
            emailLbl.text = personsData.email
            phoneNumberLbl.text = personsData.phonNumber
            
        }
               // Do any additional setup after loading the view.
    }
}
    


