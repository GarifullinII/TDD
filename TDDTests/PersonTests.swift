//
//  PersonTest.swift
//  TDDTests
//
//  Created by Ildar Garifullin on 11/10/2022.
//

import XCTest
@testable import TDD


class PersonTests: XCTestCase {
    
    var person: Person?
    var personWithFullName: Person?
    var image: UIImage?
    var imageData: Data?

    override func setUp()  {
       super.setUp()
        person = Person(name: "Anna", phone: "89999999999")
        personWithFullName = Person(name: "Anna", surname: "Petrovna", phone: "89999999999")
        image = UIImage(systemName: "person.crop.circle")
        imageData = image?.pngData()
    }

    override func tearDown() {
        person = nil
        personWithFullName = nil
        image = nil
        imageData = nil
        super.tearDown()
    }

    func testInitPersonWithNameAndPhone() {
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenNameAndPhoneSetNameAndPhone() {
        XCTAssertEqual(person?.name, "Anna")
        XCTAssertEqual(person?.phone, "89999999999")
    }
    
    func testWhenGivenFullNameAndPhoneSetNameAndPhone() {
        XCTAssertEqual(personWithFullName?.surname, "Petrovna")
    }
    
    func testInitPersonWithDate() {
        XCTAssertNotNil(person?.date)
    }
    
    func testInitPersonWithImage() {
        let person = Person(name: "Anna", phone: "89999999999", image: imageData)
        
        XCTAssertNotNil(person.image)
    }
    
    func testInitPersonWithFullNameAndImage() {
        let person = Person(name: "Anna", surname: "Petrovna", phone: "89999999999", image: imageData)
        
        XCTAssertNotNil(person.image)
    }
}
