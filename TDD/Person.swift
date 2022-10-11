//
//  Person.swift
//  TDD
//
//  Created by Ildar Garifullin on 11/10/2022.
//

import Foundation

class Person {
    let name: String
    var surname: String?
    let phone: String
    
    init(name: String, phone: String) {
        self.name = name
        self.phone = phone
    }
    
    init(name: String, surname: String, phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
    }
}
