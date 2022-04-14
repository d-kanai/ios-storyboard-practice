//
//  CounterViewModel.swift
//  ios-storyboard-practice
//
//  Created by daiki kanai on 2022/04/06.
//

import Foundation
import Combine


final class CounterViewModel {
    
    private let countSubject: CurrentValueSubject<Int, Never>
    var countPublisher: AnyPublisher<Int, Never>
    var count = 0

    
    init() {
        countSubject = CurrentValueSubject<Int, Never>(0)
        countPublisher = countSubject.eraseToAnyPublisher()
    }
    
    func countUp() {
        countSubject.send(countSubject.value + 1)
        count += 1
        print("count UP")
        print(countSubject.value)
        print(countPublisher.description)
        
    }
    
}

