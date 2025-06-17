//
//  ControlPanel.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanel: View {
    var body: some View {
        
        ScrollView {
            
            VStack() {
                
                ControlPanelHeaderComponent()
                
                ControlPanelCustomersCountComponent(count: 12)
                
                ControlPanelNewOrdersSectionComponent()
                
                ControlPanelRevenueCardComponent(revenue: 10000)
                
                ControlPanelChartComponent(data: [
                    "New Orders": 120,
                    "Delivered": 30,
                    "Canceled": 150,
                    "Returned": 10
                ])
            }
            .padding(.top, 16)
            
        }
        
    }
}

#Preview {
    ControlPanel()
}
