//
//  DataManager.swift
//  ContactList
//
//  Created by Олег Федоров on 07.09.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Jake", "John", "Chris",
        "Tom", "Liza", "Julia",
        "Dave", "Steve", "Clara"
    ]
    
    var surnames =  [
        "Smith", "Anderson", "Lopez",
        "Adams", "Collins", "Patterson",
        "Rogers", "Moore", "White"
    ]
    
    var phones =  [
        "445233445", "214242541", "654214211",
        "513152521", "214512355", "515233553",
        "567324324", "213415154", "432252523"
    ]
    
    var emails =  [
        "aaaaa@gmail.com", "bbbbb@gmail.com", "ccccc@gmail.com",
        "ddddd@gmail.com", "eeeee@gmail.com", "fffff@gmail.com",
        "ggggg@gmail.com", "hhhhh@gmail.com", "iiiii@gmail.com"
    ]
    
    private init() {}
    
}

