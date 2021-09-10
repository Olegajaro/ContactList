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
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let secondContactListVC = viewControllers?.last as? SecondContactListViewController else { return }
        
        contactListVC.contacts = contactList
        secondContactListVC.contacts = contactList
    }
}


