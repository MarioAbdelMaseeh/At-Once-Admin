//
//  ControlPanelRevenueCardComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanelRevenueCardComponent: View {
    
    var revenue: Int
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 12)
            .fill(Color("CardBackgroundColor"))
            .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
            .frame(height: 80)
            .overlay(
                VStack(spacing: 8) {
                    Text("revenue")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.primary)
                    
                    HStack(spacing: 4) {
                        Text(revenue.formattedWithSeparator())
                        Text(Currency.egp.title)
                    }
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color.teal)
                }
            )
            .padding(.horizontal, 16)
        
        
    }
}

#Preview {
    ControlPanelRevenueCardComponent(revenue: 10000)
}
