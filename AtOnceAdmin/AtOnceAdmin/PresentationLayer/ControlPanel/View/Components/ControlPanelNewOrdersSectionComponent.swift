//
//  ControlPanelNewOrdersSectionComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanelNewOrdersSectionComponent: View {
    
    @State private var navigateToOrders = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("order_status_new")
                    .font(.headline)
                Spacer()
                Button(action: {
                    navigateToOrders = true
                }){
                    Text("see_more")
                        .font(.subheadline)
                        .foregroundColor(.teal)
                }.navigationDestination(isPresented: $navigateToOrders) {
                    Orders(orderStatus: .new)
                }

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
