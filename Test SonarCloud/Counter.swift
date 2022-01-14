//
//  Counter.swift
//  Test SonarCloud
//
//  Created by Yoann Lathuliere on 14/01/2022.
//

import Foundation

struct Counter {
    var value: Int
    
    mutating func increment() {
        self.value += 1
    }
    
    mutating func increment(by step: Int) {
        self.value += step
    }
    
    mutating func decrement() {
        self.value -= 1
    }
} 
