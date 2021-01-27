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
    var index: Int = 0
    
    var body: some View {
        HStack {
            Spacer()
            Text(currency)
                .fontWeight(.bold)
            Text(((Double(amount) ?? 0) * multiplier).format)
        }
    }
}

//struct AmountRow_Previews: PreviewProvider {
//    static var previews: some View {
//        AmountRow(amount: "")
//    }
//}
