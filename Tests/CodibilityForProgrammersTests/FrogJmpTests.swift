//
//  FrogJmpTests.swift
//  CodibilityForProgrammersTests
//
//  Created by Rafael Ferreira on 12/19/18.
//

import XCTest
@testable import CodibilityForProgrammers

/**
 A small frog wants to get to the other side of the road. The frog is currently located at position X and
 wants to get to a position greater than or equal to Y. The small frog always jumps a fixed distance, D.

 Count the minimal number of jumps that the small frog must perform to reach its target.

 For example, given:

 ```
 X = 10
 Y = 85
 D = 30
 ```
 the function should return 3, because the frog will be positioned as follows:

 after the first jump, at position 10 + 30 = 40
 after the second jump, at position 10 + 30 + 30 = 70
 after the third jump, at position 10 + 30 + 30 + 30 = 100
 */
final class FrogJmpTests: XCTestCase {
    func testX10ToY85WithD30() {
        XCTAssertEqual(FrogJmp().solution(10, 85, 30), 3)
    }

    func testX50ToY199WithD4() {
        XCTAssertEqual(FrogJmp().solution(50, 199, 4), 38)
    }

    func testX1ToY5WithD2() {
        XCTAssertEqual(FrogJmp().solution(1, 5, 2), 2)
    }

    func testX5ToY105WithD3() {
        XCTAssertEqual(FrogJmp().solution(5, 105, 3), 34)
    }

    func testX1000000000ToY1000000000With1() {
        XCTAssertEqual(FrogJmp().solution(1000000000, 1000000000, 1), 0)
    }

    func testX999999999ToY1000000000WithD1000000000() {
        XCTAssertEqual(FrogJmp().solution(999999999, 1000000000, 1000000000), 1)
    }

    func testX5ToY1000000000WithD2() {
        XCTAssertEqual(FrogJmp().solution(5, 1000000000, 2), 499999998)
    }

    static var allTests = [
        ("testX10ToY85WithD30", testX10ToY85WithD30),
        ("testX50ToY199WithD4", testX50ToY199WithD4),
        ("testX1ToY5WithD2", testX1ToY5WithD2),
        ("testX5ToY105WithD3", testX5ToY105WithD3),
        ("testX1000000000ToY1000000000With1", testX1000000000ToY1000000000With1),
        ("testX999999999ToY1000000000WithD1000000000", testX999999999ToY1000000000WithD1000000000),
        ("testX5ToY1000000000WithD2", testX5ToY1000000000WithD2)
    ]
}
