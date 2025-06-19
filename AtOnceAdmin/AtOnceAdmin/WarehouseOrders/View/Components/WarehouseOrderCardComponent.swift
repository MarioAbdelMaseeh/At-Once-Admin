//
//  WarehouseOrderCardComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct WarehouseOrderCardComponent: View {
    
    var status: OrderStatus
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            HStack {
                Text(status.value)
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(status.color)
                    .cornerRadius(4)
                
                Text("#ORD-12035")
                    .foregroundColor(.teal)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            
            Text("June 16, 2025 - 03:25 PM")
                .font(.headline)
                .foregroundColor(.gray)
            
            Text("Luis Antonio Valencia")
                .font(.system(size: 16, weight: .semibold))
            
            Text("Manchester Pharmacy")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.teal)
            
            HStack {
                
                Text("Smouha - Alexandria")
                    .font(.system(size: 16, weight: .medium))
                
                Spacer()
                
                Text("1500 EGP")
                    .foregroundColor(.teal)
                    .fontWeight(.medium)
            }
        }
        .padding()
        .background(Color("CardBackgroundColor"))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.125), radius: 4, x: 0, y: 2)
        
    }
}

#Preview {
    WarehouseOrderCardComponent(status: .new)
    WarehouseOrderCardComponent(status: .delivered)
    WarehouseOrderCardComponent(status: .cancelled)
    WarehouseOrderCardComponent(status: .returned)
}
