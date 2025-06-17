//
//  ControlPanelNewOrdersSectionComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanelNewOrdersSectionComponent: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("New Orders")
                    .font(.headline)
                Spacer()
                Text("See more")
                    .font(.subheadline)
                    .foregroundColor(.primaryColor)
            }
            
            ForEach(0..<3) { _ in
                OrderCardComponent()
            }
        }.padding()
        
    }
}

#Preview {
    ControlPanelNewOrdersSectionComponent()
}
