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
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Warehouse Orders")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
        }

    }
}

#Preview {
    WarehouseOrders()
}
