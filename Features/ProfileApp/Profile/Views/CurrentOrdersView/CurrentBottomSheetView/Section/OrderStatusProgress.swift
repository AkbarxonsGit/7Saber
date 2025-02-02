//
//  OrderStatusProgress.swift
//  Profile
//
//  Created by Azizbek Musurmonov   on 08/05/24.
//

import SwiftUI
import Core
import AssetKit

struct OrderStatusProgress: View {
    
    @State private var progress: Double = 0.25
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("ORDER STATUS")
                .font(.system(size: 19, weight: .semibold))
                .foregroundColor(Asset.Color.Text.primaryCol.swiftUIColor)
            HStack(spacing: 16) {
                ProgressView(value: progress)
                    .progressViewStyle(VerticalProgressViewStyle())
                    .frame(width: 10, height: 210)
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 4) {
                        Image(uiImage: Asset.Image.Icons.receiptCheck.image)
                            .resizable()
                            .setSize(24)
                        Text("Ordered & Paid")
                            .font(.sabFont(500, size: 13))
                            .foregroundColor(Asset.Color.Text.primaryCol.swiftUIColor)
                        Text("08/02/2024 | 12:56")
                            .font(.sabFont(400, size: 11))
                            .foregroundColor(Asset.Color.Text.secondaryCol.swiftUIColor)
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Image(uiImage: Asset.Image.Icons.checkCircleBroken.image)
                            .resizable()
                            .setSize(24)
                        Text("Accepted")
                            .font(.sabFont(500, size: 13))
                            .foregroundColor(Asset.Color.Text.secondaryCol.swiftUIColor)
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Image(uiImage: Asset.Image.Icons.fastShopping.image)
                            .resizable()
                            .setSize(24)
                        Text("Shipped")
                            .font(.sabFont(500, size: 13))
                            .foregroundColor(Asset.Color.Text.secondaryCol.swiftUIColor)
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Image(uiImage: Asset.Image.Icons.done.image)
                            .resizable()
                            .setSize(20)
                        Text("Delivered")
                            .font(.sabFont(500, size: 13))
                            .foregroundColor(Asset.Color.Text.secondaryCol.swiftUIColor)
                    }
                }
                Spacer()
            }
        }
        Divider()
        //        .padding(16)
        
    }
}

#Preview {
    OrderStatusProgress()
}
