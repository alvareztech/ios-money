//
//  ContentView.swift
//  Money
//
//  Created by Daniel Alvarez on Jan/25/21.
//

import SwiftUI

struct ContentView: View {
    @State var amount: String = "100"
    
    var body: some View {
        //        NavigationView {
        List {
            Section {
                HStack {
                    Text("MXN")
                        .fontWeight(.bold)
                    TextField("0.0", text: $amount)
                        .font(.title)
                        .keyboardType(.decimalPad)
                        //                        .multilineTextAlignment(.trailing)
                        .onChange(of: amount, perform: { value in
                            print("New value? \(value)")
                        })
                        .onTapGesture {
                            self.amount = ""
                        }
                }
                AmountRow(amount: $amount, currency: "BOB", multiplier: 0.34, important: true)
                    .listRowBackground(Color.green)
                AmountRow(amount: $amount, currency: "USD", multiplier: 0.050)
            }
            Section {
                ForEach((1...10), id: \.self) {
                    PairRow(amount: $amount, index: $0, multiplier: 0.34)
                }
            }
        }
        //            .navigationBarTitle("Money")
        .listStyle(InsetGroupedListStyle())
        .gesture(DragGesture().onChanged({ _ in
            self.hideKeyboard()
        }))
        //        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
