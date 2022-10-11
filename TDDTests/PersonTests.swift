//
//  PersonTest.swift
//  TDDTests
//
//  Created by Ildar Garifullin on 11/10/2022.
//

import XCTest
@testable import TDD


class PersonTests: XCTestCase {

    override func setUp()  {
       super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testInitPersonWithNameAndPhone() {
        let person = Person(name: "Anna", phone: "89999999999")
        
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        let person = Person(name: "Anna", phone: "89999999999", surname: "Petrovna")
        
        XCTAssertNotNil(person)
    }
}
