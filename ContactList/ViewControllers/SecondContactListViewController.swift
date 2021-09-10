//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Олег Федоров on 08.09.2021.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    var contacts: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactTwo", for: indexPath)
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.phone
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        } else if indexPath.row == 1 {
            content.text = contact.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
