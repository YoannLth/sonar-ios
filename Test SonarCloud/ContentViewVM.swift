//
//  ContentViewVM.swift
//  Test SonarCloud
//
//  Created by Yoann Lathuliere on 14/01/2022.
//

import Foundation
import SwiftUI

class ContentViewVM: ObservableObject {
    @Published var counter = Counter(value: 0)
    
    func incrementCounter() {
        counter.increment()
    }
    
    func incrementCounterBy10() {
        counter.increment(by: 10)
    }
    
    func resetCounter() {
        counter = Counter(value: 0)
    }
    
    func decrementCounter() {
        counter.decrement()
    }
    
    func codeThatWillRaiseBug() {
        let valueToPrint = self.counter.value > 0 ? "More than 0" : "More than 0"
        print(valueToPrint)
    }
    
    func codeThatWillRaiseCodeSmells() {
        // TODO
    }
}
