import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BinaryGapTests.allTests),
        testCase(CyclicRotationTests.allTests),
        testCase(OddOccurrencesInArrayTests.allTests),
        testCase(FrogJmpTests.allTests)
    ]
}
#endif
