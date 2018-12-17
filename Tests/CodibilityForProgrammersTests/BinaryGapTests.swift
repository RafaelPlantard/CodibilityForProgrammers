//
//  BinaryGapTests.swift
//  CodibilityForProgrammers
//
//  Created by Rafael Ferreira on 12/17/18.
//

import XCTest
@testable import CodibilityForProgrammers

/**
 A _binary gap_ within a positive integer N is any maximal sequence of consecutive zeros that is
 surrounded by ones at both ends in the binary representation of N.

 For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The
 number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and
 one of length 3. The number 20 has binary representation 10100 and contains one binary gap of
 length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has
 binary representation 100000 and has no binary gaps.
 */
final class BinaryGapTests: XCTestCase {
    func testNEqualTo9() {
        XCTAssertEqual(BinaryGap().solution(9), 2)
    }

    func testNEqualTo529() {
        XCTAssertEqual(BinaryGap().solution(529), 4)
    }

    func testNEqualTo20() {
        XCTAssertEqual(BinaryGap().solution(20), 1)
    }

    func testNEqualTo15() {
        XCTAssertEqual(BinaryGap().solution(15), 0)
    }

    func testNEqualTo32() {
        XCTAssertEqual(BinaryGap().solution(32), 0)
    }

    func testNEqualTo1041() {
        XCTAssertEqual(BinaryGap().solution(1041), 5)
    }

    func testNEqualTo1() {
        XCTAssertEqual(BinaryGap().solution(1), 0)
    }

    func testNEqualTo2() {
        XCTAssertEqual(BinaryGap().solution(2), 0)
    }

    func testNEqualTo147() {
        XCTAssertEqual(BinaryGap().solution(147), 2)
    }

    func testNEqualTo483() {
        XCTAssertEqual(BinaryGap().solution(483), 3)
    }

    func testNEqualTo647() {
        XCTAssertEqual(BinaryGap().solution(647), 4)
    }

    func testNEqualTo6291457() {
        XCTAssertEqual(BinaryGap().solution(6291457), 20)
    }
}
