//
//  WhichFruitUITests.swift
//  WhichFruitUITests
//
//  Created by Matthew Sloane on 9/8/16.
//  Copyright © 2016 Matthew Sloane. All rights reserved.
//

import Quick
import Nimble

class WhichFruitSpec: QuickSpec {
    
    override func spec() {
        describe("when app is launched") {
            XCUIApplication().launch()
//            let app = XCUIApplication()
//            let strawberriesButton = app.buttons["strawberries"]
//            let kiwisButton = app.buttons["kiwis"]
            
            it("should show buttons and labels") {
//                expect(strawberriesButton).to(beTruthy())
//                expect(kiwisButton).to(beTruthy())
            }
        }
    }
}
