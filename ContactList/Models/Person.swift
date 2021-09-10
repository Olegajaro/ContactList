//
//  Person.swift
//  ContactList
//
//  Created by Олег Федоров on 07.09.2021.
//

struct Person {
    let name:String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = Set(DataManager.shared.names)
        let surnames = Set(DataManager.shared.surnames)
        let phones = Set(DataManager.shared.phones)
        let emails = Set(DataManager.shared.emails)
        
        let sequenceNameSurname = Dictionary(uniqueKeysWithValues: zip(
                names,
                surnames
            ))
        let sequencePhoneEmail = Dictionary(uniqueKeysWithValues: zip(
                phones,
                emails
            ))
        
        let total = Array(zip(sequenceNameSurname, sequencePhoneEmail))
        
        var index = 0
        
        for _ in 1...total.count {
            let person = Person(
                name: total[index].0.key,
                surname: total[index].0.value,
                phone: total[index].1.key,
                email: total[index].1.value
            )
            index += 1
            persons.append(person)
        }
        
        return persons
    }
}

