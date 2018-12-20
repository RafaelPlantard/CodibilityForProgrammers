//
//  PermMissingElem.swift
//  CodibilityForProgrammers
//
//  Created by Rafael Ferreira on 12/19/18.
//

final class PermMissingElem {
    func solution(_ a: inout [Int]) -> Int {
        for i in (1 ... a.count) {
            if !a.contains(i) {
                return i
            }
        }


        return 1
    }
}
