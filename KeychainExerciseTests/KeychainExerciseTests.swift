//
//  KeychainExerciseTests.swift
//  KeychainExerciseTests
//
//  Created by Angelina Olmedo on 6/10/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import XCTest
import KeychainSwift
@testable import KeychainExercise

class KeychainExerciseTests: XCTestCase {
    
    var keychainVC = ViewController()

    func testSave() {
        keychainVC.keychainSave(str: "test")
        XCTAssertEqual(keychainVC.keychainReveal()!, "test")
        
        keychainVC.keychainSave(str: "test 2")
        XCTAssertEqual(keychainVC.keychainReveal()!, "test 2")
    }

    func testDelete() {
        keychainVC.keychainSave(str: "test 3")
        XCTAssertEqual(keychainVC.keychainReveal()!, "test 3")
        keychainVC.keychainDelete()
        XCTAssertEqual(keychainVC.keychainReveal()!, "")
    }

}
