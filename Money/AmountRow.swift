//
//  AmountRow.swift
//  Money
//
//  Created by Daniel Alvarez on Jan/25/21.
//

import SwiftUI

struct AmountRow: View {
    @Binding var amount: String
    var currency: String
    var multiplier: Double
    var important: Bool = false
    
    var body: some View {
        let value = ((Double(amount) ?? 0) * multiplier).format
        HStack {
            Spacer()
            Text(currency)
                .fontWeight(.bold)
            if important {
                Text(value)
                    .font(.title)
            } else {
                Text(value)
                    .font(.title3)
            }
        }
    }
}

//struct AmountRow_Previews: PreviewProvider {
//    static var previews: some View {
//        AmountRow(amount: "")
//    }
//}
