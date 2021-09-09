//
//  MainViewController.swift
//  ContactList
//
//  Created by Олег Федоров on 08.09.2021.
//

import UIKit

class MainViewController: UITabBarController {

    private var contactList = Person.getPerson()

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        //for viewController in viewControllers {
        if let firstNavigationVC = viewControllers[0] as? UINavigationController {
            guard let contactListVC = firstNavigationVC.topViewController as? ContactListViewController else { return }
            
            contactListVC.contacts = contactList
        } else if let secondNavigationVC = viewControllers[1] as? UINavigationController {
            let secondContactListVC = secondNavigationVC.topViewController as! SecondContactListViewController
            
            secondContactListVC.contacts = contactList
        }
    }
}


