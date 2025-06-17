//
//  WarehouseOrders.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct WarehouseOrders: View {
    var body: some View {
        
        VStack {

            ScrollView {
                VStack(spacing: 16) {
                    WarehouseOrderCardComponent(status: .new)
                    WarehouseOrderCardComponent(status: .delivered)
                    WarehouseOrderCardComponent(status: .cancelled)
                    WarehouseOrderCardComponent(status: .returned)
                }
                .padding(.horizontal, 16)
                .padding(.top, 16)
            }
        }
        
        
    }
}

#Preview {
    WarehouseOrders()
}
