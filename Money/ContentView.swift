//
//  ContentView.swift
//  Money
//
//  Created by Daniel Alvarez on Jan/25/21.
//

import SwiftUI

struct ContentView: View {
    @State var amount: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("MXN", text: $amount)
                        .keyboardType(.decimalPad)
//                        .multilineTextAlignment(.trailing)
                        .onChange(of: amount, perform: { value in
                            print("New value? \(value)")
                        })
                    AmountRow(amount: $amount, currency: "BOB", multiplier: 0.34)
                    AmountRow(amount: $amount, currency: "USD", multiplier: 0.050)
                }
                Section {
                    List {
                        PairRow(amount: $amount, index: 1, multiplier: 0.34)
                        PairRow(amount: $amount, index: 2, multiplier: 0.34)
                        PairRow(amount: $amount, index: 3, multiplier: 0.34)
                        PairRow(amount: $amount, index: 4, multiplier: 0.34)
                        PairRow(amount: $amount, index: 5, multiplier: 0.34)
                        PairRow(amount: $amount, index: 6, multiplier: 0.34)
                        PairRow(amount: $amount, index: 7, multiplier: 0.34)
                        PairRow(amount: $amount, index: 8, multiplier: 0.34)
                        PairRow(amount: $amount, index: 9, multiplier: 0.34)
                        PairRow(amount: $amount, index: 10, multiplier: 0.34)
                    }
                }
            }
            .navigationBarTitle("Money")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
