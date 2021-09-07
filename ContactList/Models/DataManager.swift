//
//  DataManager.swift
//  ContactList
//
//  Created by Олег Федоров on 07.09.2021.
//

class DataManager {
    let names: [String]
    let surnames: [String]
    let phones: [String]
    let emails: [String]
    
    init(names: [String], surnames: [String], phones: [String], emails: [String]) {
        self.names = names
        self.surnames = surnames
        self.phones = phones
        self.emails = emails
    }
    
    static func data() -> DataManager {
        DataManager(
            names: [
                "Jake",
                "John",
                "Chris",
                "Tom",
                "Liza",
                "Julia",
                "Dave",
                "Steve",
                "Clara"
            ],
            surnames: [
                "Smith",
                "Anderson",
                "Lopez",
                "Adams",
                "Collins",
                "Patterson",
                "Rogers",
                "Moore",
                "White"
            ],
            phones: [
                "445233445",
                "214242541",
                "654214211",
                "513152521",
                "214512355",
                "515233553",
                "567324324",
                "213415154",
                "432252523"
            ],
            emails: [
                "aaaaa@gmail.com",
                "bbbbb@gmail.com",
                "ccccc@gmail.com",
                "ddddd@gmail.com",
                "eeeee@gmail.com",
                "fffff@gmail.com",
                "ggggg@gmail.com",
                "hhhhh@gmail.com",
                "iiiii@gmail.com"
            ]
        )
    }
}

//[
//    "Jake",
//    "John",
//    "Chris",
//    "Tom",
//    "Liza",
//    "Julia",
//    "Dave",
//    "Steve",
//    "Clara"
//]

//[
//    "Smith",
//    "Anderson",
//    "Lopez",
//    "Adams",
//    "Collins",
//    "Patterson",
//    "Rogers",
//    "Moore",
//    "White"
//]

//[
//    "445233445",
//    "214242541",
//    "654214211",
//    "513152521",
//    "214512355",
//    "515233553",
//    "567324324",
//    "213415154",
//    "432252523"
//]

//[
//    "aaaaa@gmail.com",
//    "bbbbb@gmail.com",
//    "ccccc@gmail.com",
//    "ddddd@gmail.com",
//    "eeeee@gmail.com",
//    "fffff@gmail.com",
//    "ggggg@gmail.com",
//    "hhhhh@gmail.com",
//    "iiiii@gmail.com"
//]
