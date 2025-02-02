//
//  OrderBottomSheetView.swift
//  Profile
//
//  Created by Azizbek Musurmonov   on 06/05/24.
//

import SwiftUI
import Core
import AssetKit

struct OrderBottomSheetView: View {
    var body: some View {
        VStack(spacing: .zero) {
            BottomSheetsNavBar(title: "ORDER DETAILS")
            ScrollView {
                    OrderIdView()
                    ShipToDataView()
                    PaymentItem()
                    OrderedProductsView()
            }
            .padding()
        }
    }
}

#Preview {
    OrderBottomSheetView()
}
