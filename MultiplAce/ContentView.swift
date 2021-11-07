//
//  ContentView.swift
//  MultiplAce
//
//  Created by Peter Molnar on 07/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var multipleTable = 2
    @State private var questionCountIndex = 1
    
    let questionCounts = [5, 10, 20]
    
    var body: some View {
        VStack {
            Stepper("Multiplication table of: \(multipleTable)", value: $multipleTable, in: 2...12)
            Section(header: Text("How many questions do you want?")) {
                Picker("Number of questions", selection: $questionCountIndex) {
                    ForEach(0..<questionCounts.count) {
                        Text("\(self.questionCounts[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
