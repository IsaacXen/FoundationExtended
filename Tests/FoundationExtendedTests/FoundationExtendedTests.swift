import XCTest
@testable import FoundationExtended

final class FoundationExtendedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FoundationExtended().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
