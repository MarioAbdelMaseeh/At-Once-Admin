//
//  Orders.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct Orders: View {
    
    var orderStatus: OrderStatus
    
    var body: some View {
        
        VStack {
            
            SearchBarComponent(searchText: .constant(""))
                .padding(.horizontal, 16)
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(0..<10) { _ in
                        OrderCardComponent()
                    }
                }
                .padding()
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text(orderStatus.title)
                    .font(.title3)
                    .fontWeight(.semibold)
            }
        }
        
    }
}

#Preview {
    Orders(orderStatus: .new)
}
