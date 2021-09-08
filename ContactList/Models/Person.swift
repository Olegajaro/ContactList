//
//  Person.swift
//  ContactList
//
//  Created by Олег Федоров on 07.09.2021.
//

struct Person {
    var name:String
    var surname: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let namesPersons = Set(DataManager.data().names)
        let surnamesPersons = Set(DataManager.data().surnames)
        let phonesPersons = Set(DataManager.data().phones)
        let emailsPersons = Set(DataManager.data().emails)
        
        let sequenceNameSurname = Dictionary(uniqueKeysWithValues: zip(
                namesPersons,
                surnamesPersons
            ))
        let sequencePhoneEmail = Dictionary(uniqueKeysWithValues: zip(
                phonesPersons,
                emailsPersons
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

