//
//  CucumberishInitializer.swift
//  ios-storyboard-practiceUITests
//
//  Created by daiki kanai on 2022/05/17.
//

import Foundation
import XCTest
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumberish() {

        before({ _ in
            BaseStepDefinitions().BaseSteps()
        })
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: ["focus"], excludeTags: nil)
            
        
    }
    
}
