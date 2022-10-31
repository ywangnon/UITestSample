//
//  UITestSampleTests.swift
//  UITestSampleTests
//
//  Created by Hansub Yoo on 2022/10/31.
//

import XCTest
@testable import UITestSample

final class UITestSampleTests: XCTestCase {
    
    var sut: LoginValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = LoginValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testLoginValidator_WhenVlidEmailProvided_ShouldReturnTrue() {
        //Arrange
        let user = User(email: "Fomagran6@naver.com", password: "1234")
        
        //Action
        let isValidEmail = sut.isVlidEmail(email: user.email)
        
        //Assert
//        XCTAssertTrue(isValidEmail, XCTAssertTrue(isValidEmail, "isValidEmail은 True를 반환해야되는데 False를 반환했어 @를 포함시켜야 해!"))
        XCTAssertTrue(isValidEmail, "isValidEmail은 True를 반환해야되는데 False를 반환했어 @를 포함시켜야 해!")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
