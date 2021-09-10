//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Олег Федоров on 07.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count 
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        
        content.text = contact.fullName

        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let infoVC = segue.destination as! InfoViewController
            
            infoVC.person = contacts[indexPath.row]
        }
    }

}
