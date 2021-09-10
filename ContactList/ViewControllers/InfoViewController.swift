//
//  InfoViewController.swift
//  ContactList
//
//  Created by Олег Федоров on 07.09.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var phonePersonLabel: UILabel!
    @IBOutlet var emailPersonLabel: UILabel!
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phonePersonLabel.text = "Phone: \(person.phone)"
        emailPersonLabel.text = "Email: \(person.email)"
    }


}

