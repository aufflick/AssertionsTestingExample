//
//  ProgrammerAssertionsExampleTests.swift
//  AssertionsTests
//
//  Created by Mohamed Afifi on 12/20/15.
//  Copyright © 2015 mohamede1945. All rights reserved.
//

import XCTest
@testable import Assertions


/// ### IMPORTANT HOW TO USE ###
/// 1. Drop `ProgrammerAssertions.swift` to the target of your app or framework under test. Just besides your source code.
/// 2. Drop `XCTestCase+ProgrammerAssertions.swift` to your test target. Just besides your test cases.
/// 3. Use `assert`, `assertionFailure`, `precondition`, `preconditionFailure` and `fatalError` normally as you always do.
/// 4. Unit test them with the new methods `expectAssert`, `expectAssertionFailure`, `expectPrecondition`, `expectPreconditionFailure` and `expectFatalError`.
///
/// This file is just an example of how to unit test the functions.
/// When you run tests, you should expect many of them to fail. This is normally, because the test cases tests the error message produced by expectXXX methods.
/// For a complete project example see <https://github.com/mohamede1945/AssertionsTestingExample>

class AssertionsTestsExample: XCTestCase {

    // assert tests

    func testAssertNotCalled() {
        expectAssert("Zero division") {
        }
    }

    func testAssertTrueCondition() {
        expectAssert("Zero division") {
            let _ = divideAssert(1, by: 1)
        }
    }

    func testAssertNoMessage() {
        expectAssert() {
            let _ = divideAssert(1, by: 0)
        }
    }

    func testAssertErrorIncorrectMessage() {
        expectAssert("Invalid") {
            let _ = divideAssert(1, by: 0)
        }
    }

    func testAssertCorrectMessage() {
        expectAssert("Zero division") {
            let _ = divideAssert(1, by: 0)
        }
    }

    // expectionFailure tests

    func testAssertionFailureNotCalled() {
        expectAssertionFailure("Zero division") {
            let _ = divideAssertionFailure(1, by: 1)
        }
    }

    func testAssertionFailureNoMessage() {
        expectAssertionFailure() {
            let _ = divideAssertionFailure(1, by: 0)
        }
    }

    func testAssertionFailureErrorIncorrectMessage() {
        expectAssertionFailure("Invalid") {
            let _ = divideAssertionFailure(1, by: 0)
        }
    }

    func testAssertionFailureCorrectMessage() {
        expectAssertionFailure("Zero division") {
            let _ = divideAssertionFailure(1, by: 0)
        }
    }


    // precondition tests

    func testPreconditionNotCalled() {
        expectPrecondition("Zero division") {
        }
    }

    func testPreconditionTrueCondition() {
        expectPrecondition("Zero division") {
            let _ = dividePrecondition(1, by: 1)
        }
    }

    func testPreconditionNoMessage() {
        expectPrecondition() {
            let _ = dividePrecondition(1, by: 0)
        }
    }

    func testPreconditionErrorIncorrectMessage() {
        expectPrecondition("Invalid") {
            let _ = dividePrecondition(1, by: 0)
        }
    }

    func testPreconditionCorrectMessage() {
        expectPrecondition("Zero division") {
            let _ = dividePrecondition(1, by: 0)
        }
    }


    // preconditionFailure tests

    func testPreconditionFailureNotCalled() {
        expectPreconditionFailure("Zero division") {
            let _ = dividePreconditionFailure(1, by: 1)
        }
    }

    func testPreconditionFailureNoMessage() {
        expectPreconditionFailure() {
            let _ = dividePreconditionFailure(1, by: 0)
        }
    }

    func testPreconditionFailureErrorIncorrectMessage() {
        expectPreconditionFailure("Invalid") {
            let _ = dividePreconditionFailure(1, by: 0)
        }
    }

    func testPreconditionFailureCorrectMessage() {
        expectPreconditionFailure("Zero division") {
            let _ = dividePreconditionFailure(1, by: 0)
        }
    }

    // fatalError tests

    func testFatalErrorNotCalled() {
        expectFatalError("Zero division!") {
            let _ = divideFatalError(1, by: 1)
        }
    }

    func testFatalErrorNoMessage() {
        expectFatalError() {
            let _ = divideFatalError(1, by: 0)
        }
    }

    func testFatalErrorIncorrectMessage() {
        expectFatalError("Invalid") {
            let _ = divideFatalError(1, by: 0)
        }
    }

    func testFatalCorrectMessage() {
        expectFatalError("Zero division") {
            let _ = divideFatalError(1, by: 0)
        }
    }
}
