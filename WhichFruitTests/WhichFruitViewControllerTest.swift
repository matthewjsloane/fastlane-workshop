//
//  WhichFruitViewControllerTest.swift
//  WhichFruitTests
//
//  Created by Matthew Sloane on 9/8/16.
//  Copyright © 2016 Matthew Sloane. All rights reserved.
//

import Quick
import Nimble
@testable import WhichFruit

class WhichFruitViewControllerSpec: QuickSpec {
    
    override func spec() {
        func getRenderedViewController() -> WhichFruitViewController {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let whichFruitViewController = storyboard.instantiateViewControllerWithIdentifier("whichFruitViewController") as! WhichFruitViewController
            _ = whichFruitViewController.view // force view rendering
            return whichFruitViewController
        }
        
        describe("when correct fruit is tapped") {
            let whichFruitViewController = getRenderedViewController()
            whichFruitViewController.assignFruitDeity({0})
            
            it("should increment score by one") {
                whichFruitViewController.fruitTapped(UIButton())
                expect(whichFruitViewController.scoreLabel.text).to(equal("Score: 1"))
            }
        }
        
        describe("when incorrect fruit is tapped") {
            let whichFruitViewController = getRenderedViewController()
            whichFruitViewController.assignFruitDeity({1})
            
            it("resets counter to zero") {
                whichFruitViewController.fruitTapped(UIButton())
                expect(whichFruitViewController.scoreLabel.text).to(equal("Score: 0"))
            }
        }
    }
}
