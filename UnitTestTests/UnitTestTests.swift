//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by Дмитрий Пономарев on 24.07.2023.
//

import XCTest
@testable import UnitTest

final class UnitTestTests: XCTestCase {
    
    var sut: ViewController!

    override func setUpWithError() throws {
        sut = ViewController()
        try super.setUpWithError()
        
    }

    override func tearDownWithError() throws {
        
        try super.tearDownWithError()
    }
    
    func testLowestVolueShhouldBeZero() {
        sut.setVolume(volume: -100)
        let volume = sut.volume
        
        XCTAssert(volume == 0, "Lowes should be zero")
    }
    
    func testHighestVolueShhouldBe100() {
        sut.setVolume(volume: 200)
        let volume = sut.volume
        
        XCTAssert(volume == 100, "Highest should be 100")
    }
    
    func testCharactersAreSimiler() {
        
        let string = "qwerty"
        let string2 = "ytrewq"
        
        let bool = sut.charactersCompare(one: string, two: string2)
        
        XCTAssert(bool, "strings have to be similare")
    }
}
