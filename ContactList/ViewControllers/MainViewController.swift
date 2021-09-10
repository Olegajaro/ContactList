//
//  MainViewController.swift
//  ContactList
//
//  Created by Олег Федоров on 08.09.2021.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    // MARK: - Navigation
    
    private func setupViewControllers() {
        let contactList = Person.getPerson()
        let contactListVC = viewControllers?.first as! ContactListViewController
        let secondContactListVC = viewControllers?.last as! SecondContactListViewController
        
        contactListVC.contacts = contactList
        secondContactListVC.contacts = contactList
    }
}


