//
//  OddOccurrencesInArray.swift
//  CodibilityForProgrammers
//
//  Created by Rafael Ferreira on 12/18/18.
//

final class OddOccurrencesInArray {
    func solution(_ a: inout [Int]) -> Int {
        var dictionary = [Int: Int]()

        for i in a {
            let count = dictionary[i] ?? 0
            dictionary[i] = count + 1
        }

        return dictionary.first(where: { key, count in count % 2 != 0 })!.key
    }
}
