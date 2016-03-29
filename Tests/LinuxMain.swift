#if os(Linux)

import XCTest
@testable import C7TestSuite

XCTMain([
    testCase(ExampleTests.allTests)
])

#endif