//
//  BinaryGap.swift
//  CodibilityForProgrammers
//
//  Created by Rafael Ferreira on 12/17/18.
//

final class BinaryGap {
    func solution(_ n: Int) -> Int {
        let binaryReversed = String(n, radix: 2, uppercase: true).reversed().drop(while: { char in char == "0" })
        let binaryWithoutZerosAfterLastOne = String(binaryReversed.reversed())
        let numbersOfOnes = binaryWithoutZerosAfterLastOne.filter({ character in character == "1" }).count

        guard numbersOfOnes >= 2, binaryWithoutZerosAfterLastOne.count != numbersOfOnes,
            let last = binaryWithoutZerosAfterLastOne.split(separator: "1").sorted().last else {
            return 0
        }

        return last.count
    }
}
