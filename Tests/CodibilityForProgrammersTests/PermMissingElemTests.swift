//
//  PermMissingElemTests.swift
//  CodibilityForProgrammersTests
//
//  Created by Rafael Ferreira on 12/19/18.
//

import XCTest
@testable import CodibilityForProgrammers

/**
 An array A consisting of N different integers is given. The array contains integers in the range [1..(N +
 1)], which means that exactly one element is missing.

 Your goal is to find that missing element.

 For example, given array A such that:

 ```
 A[0] = 2
 A[1] = 3
 A[2] = 1
 A[3] = 5
 ```
 the function should return 4, as it is the missing element.
 */
final class PermMissingElemTests: XCTestCase {
    func testIsMissing4() {
        var a = [2, 3, 1, 5]
        XCTAssertEqual(PermMissingElem().solution(&a), 4)
    }

    func testIsMissing6() {
        var a = [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12]
        XCTAssertEqual(PermMissingElem().solution(&a), 6)
    }

    static var allTests = [
        ("testIsMissing4", testIsMissing4),
        ("testIsMissing6", testIsMissing6)
    ]
}
