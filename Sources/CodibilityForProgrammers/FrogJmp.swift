//
//  FrogJmp.swift
//  CodibilityForProgrammers
//
//  Created by Rafael Ferreira on 12/19/18.
//

import func Foundation.ceil

final class FrogJmp {
    func solution(_ x: Int, _ y: Int, _ d: Int) -> Int {
        return Int(ceil((Double(y) - Double(x)) / Double(d)))
    }
}
