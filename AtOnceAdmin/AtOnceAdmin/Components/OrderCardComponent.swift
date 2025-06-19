//
//  ControlPanelOrderCardComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct OrderCardComponent: View {
    
    @State private var navigateToWarehouseOrders = false
    
    var body: some View {
        
        Button(action: {
            navigateToWarehouseOrders = true
        }){
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hamada Pharma Company")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                    Text("3 New orders")
                        .font(.subheadline)
                        .foregroundColor(Color.teal)
                }
                Spacer()
                Text("199 EGP")
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
            .padding()
            .background(Color("CardBackgroundColor"))
            .cornerRadius(8)
            .shadow(radius: 1)
        }.navigationDestination(isPresented: $navigateToWarehouseOrders) {
            WarehouseOrders()
        }
        
    }
}

#Preview {
    OrderCardComponent()
}
