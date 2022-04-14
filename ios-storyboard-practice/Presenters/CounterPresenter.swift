//
//  CounterPresenter.swift
//  ios-storyboard-practice
//
//  Created by daiki kanai on 2022/04/14.
//

import Foundation

class CounterPresenter {
    
    func increment(view: CounterViewController, counterNumber: Int) {
        let incrementedNumber = counterNumber + 1
        view.updateCounterLabel(countNumber: incrementedNumber)
    }
    
}
