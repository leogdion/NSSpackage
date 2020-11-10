import XCTest
@testable import NSSpackage

final class NSSpackageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NSSpackage().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
