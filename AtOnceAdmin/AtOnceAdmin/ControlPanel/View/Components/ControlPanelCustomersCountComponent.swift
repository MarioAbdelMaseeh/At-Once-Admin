//
//  ControlPanelCustomersCountComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanelCustomersCountComponent: View {
    
    var count: Int
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 12)
            .fill(Color("CardBackgroundColor"))
            .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
            .frame(height: 80)
            .overlay(
                VStack(spacing: 8) {
                    Text("Customers Count")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.primary)
                    
                    Text("\(count)")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(Color.teal)
                }
            )
            .padding(.horizontal, 16)
    }
}

#Preview {
    ControlPanelCustomersCountComponent(count: 12)
}
