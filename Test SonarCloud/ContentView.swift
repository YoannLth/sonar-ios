//
//  ContentView.swift
//  Test SonarCloud
//
//  Created by Yoann Lathuliere on 14/01/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewVM
    
    var body: some View {
        Text("Hello, SonarCloud!")
            .padding()
        
        VStack {
            Text("Value: \(viewModel.counter.value)")
            
            Button("Increment") { 
                viewModel.incrementCounter()
            }
            
            Button("Decrement") { 
                viewModel.decrementCounter()
            }
            
            Button("Increment by 10") { 
                viewModel.incrementCounterBy10()
            }
            
            Button("Reset") { 
                viewModel.resetCounter()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewVM())
    }
}
