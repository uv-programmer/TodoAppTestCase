//
//  Springboard.swift
//  TodoAppEndToEndTests
//
//  Created by VIshnu Unnikrishnan  on 13/10/22.
//

import Foundation
import XCTest

class Springboard {
    
    static let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    class func deleteApp() {
        
        XCUIApplication().terminate()
        springboard.activate()
        
        let appIcon = springboard.icons.matching(identifier: "TodoApp").firstMatch
        appIcon.press(forDuration: 1.3)
         
        let _ = springboard.buttons["Remove App"].waitForExistence(timeout: 1.0)
        springboard.buttons["Remove App"].tap()
        
        let deleteButton = springboard.alerts.buttons["Delete App"]
        if deleteButton.waitForExistence(timeout: 5){
            deleteButton.tap()
            springboard.alerts.buttons["Delete"].tap()
            
        }
            
    }
}
