//
//  CalculadoraUITests.swift
//  CalculadoraUITests
//
//  Created by jcapasix on 13/10/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

import XCTest

class CalculadoraUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func suma(){
        
    }
    
    func testExample() {
 
        
        let app = XCUIApplication()
        let element = app.otherElements.containing(.staticText, identifier:"00").element
        element.tap()
        
        let elementsQuery = app.otherElements.containing(.staticText, identifier:"00")
        let textField = elementsQuery.children(matching: .textField).element(boundBy: 0)
        textField.tap()
        textField.typeText("2")
        
        let textField2 = elementsQuery.children(matching: .textField).element(boundBy: 1)
        textField2.tap()
        textField2.typeText("2")
        element.tap()
        app.buttons["+"].tap()

    }
    
}
