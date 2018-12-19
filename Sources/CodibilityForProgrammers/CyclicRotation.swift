//
//  CyclicRotation.swift
//  CodibilityForProgrammers
//
//  Created by Rafael Ferreira on 12/18/18.
//

final class CyclicRotation {
    func solution(_ a: inout [Int], _ k: Int) -> [Int] {
        guard !a.isEmpty else { return a }

        (0 ..< k).forEach { _ in
            a.insert(a.removeLast(), at: 0)
        }

        return a
    }
}
