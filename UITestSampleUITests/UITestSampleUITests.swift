//
//  UITestSampleUITests.swift
//  UITestSampleUITests
//
//  Created by Hansub Yoo on 2022/10/31.
//

import XCTest

final class UITestSampleUITests: XCTestCase {
    private var app: XCUIApplication!
    private var emailTF: XCUIElement!
    private var passwordTF: XCUIElement!
    private var repeatPasswordTF: XCUIElement!
    private var signupButton: XCUIElement!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        app = XCUIApplication()
        app.launch()
        
        emailTF = app.textFields["emailTF"]
        passwordTF = app.textFields["passwordTF"]
        repeatPasswordTF = app.textFields["repeaetPasswordTF"]
        signupButton = app.buttons["signupButton"]
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testSignupViewController_DonotMatchPasswordAndRepeatPassword_PresentErrorAlertDialog() {
        
        //Act
        emailTF.tap()
        emailTF.typeText("formagran6@naver.com")
        
        passwordTF.tap()
        passwordTF.typeText("12345678")
        
        repeatPasswordTF.tap()
        repeatPasswordTF.typeText("123456")
        
        signupButton.tap()
        
        //Assert
        XCTAssertTrue(app.alerts["errorAlertDialog"].waitForExistence(timeout: 1), "잘못된 정보를 입력하면 경고창이 떠야하는데 안떴어요.")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
