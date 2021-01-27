//
//  PairRow.swift
//  Money
//
//  Created by Daniel Alvarez on Jan/26/21.
//

import SwiftUI

struct PairRow: View {
    @Binding var amount: String
    var index: Int = 0
    var multiplier: Double
    
    var body: some View {
        HStack {
            Text("MXN")
                .fontWeight(.bold)
            Text(String(Double(amount)?.ten(index) ?? 0))
            Spacer()
            Text("BOB")
                .fontWeight(.bold)
            Text((Double((Int(Double(amount)?.ten(index) ?? 0))) * multiplier).format)
        }
    }
}

//struct PairRow_Previews: PreviewProvider {
//    static var previews: some View {
//        PairRow(amount: nil)
//    }
//}
