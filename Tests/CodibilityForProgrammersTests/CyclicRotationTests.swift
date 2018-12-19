//
//  CyclicRotationTests.swift
//  CodibilityForProgrammersTests
//
//  Created by Rafael Ferreira on 12/18/18.
//

import XCTest
@testable import CodibilityForProgrammers

/**
 An array A consisting of N integers is given. Rotation of the array means that each element is shifted
 right by one index, and the last element of the array is moved to the first place. For example, the
 rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6 is
 moved to the first place).

 The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.

 For example, given

 ```
 A = [3, 8, 9, 7, 6]
 K = 3
 ```
 the function should return `[9, 7, 6, 3, 8]`. Three rotations were made:

 ```
 [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
 [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
 [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 ```
 For another example, given

 ```
 A = [0, 0, 0]
 K = 1
 ```
 the function should return `[0, 0, 0]`

 Given

 ```
 A = [1, 2, 3, 4]
 K = 4
 ```
 the function should return `[1, 2, 3, 4]`
 */
final class CyclicRotationTests: XCTestCase {
    func testArrayShifted1Time() {
        var a = [3, 8, 9, 7, 6]

        XCTAssertEqual(CyclicRotation().solution(&a, 1), [6, 3, 8, 9, 7])
    }

    func testArrayShifted2Time() {
        var a = [3, 8, 9, 7, 6]

        XCTAssertEqual(CyclicRotation().solution(&a, 2), [7, 6, 3, 8, 9])
    }

    func testArrayShifted3Time() {
        var a = [3, 8, 9, 7, 6]

        XCTAssertEqual(CyclicRotation().solution(&a, 3), [9, 7, 6, 3, 8])
    }

    func testArrayWithEqualElementsShifted1Time() {
        var a = [0, 0, 0]

        XCTAssertEqual(CyclicRotation().solution(&a, 1), [0, 0, 0])
    }

    func testArrayShiftedSameLengthTime() {
        var a = [1, 2, 3, 4]

        XCTAssertEqual(CyclicRotation().solution(&a, 4), [1, 2, 3, 4])
    }

    func testArrayShiftedEmptyArray() {
        var a = [Int]()

        XCTAssertEqual(CyclicRotation().solution(&a, 1), [])
    }
}
