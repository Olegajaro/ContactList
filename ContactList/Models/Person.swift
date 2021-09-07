//
//  Person.swift
//  ContactList
//
//  Created by Олег Федоров on 07.09.2021.
//

struct Person: Hashable {
    var name:String
    var surname: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: Set<Person> = Set()
        
        for _ in 1...9 {
            let person = Person(
                name: DataManager.data().names.randomElement() ?? "" ,
                surname: DataManager.data().surnames.randomElement() ?? "",
                phone: DataManager.data().phones.randomElement() ?? "",
                email: DataManager.data().emails.randomElement() ?? ""
            )
            persons.insert(person)
        }
        
        let arrayPerson = Array(persons)
        
        return arrayPerson
    }
}
