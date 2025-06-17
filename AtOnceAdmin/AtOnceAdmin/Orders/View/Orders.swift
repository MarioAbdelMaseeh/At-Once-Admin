//
//  Orders.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct Orders: View {
    var body: some View {
        
        VStack {
            
            OrdersSearchBarComponent(searchText: .constant(""))
                .padding(.horizontal, 16)
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(0..<10) { _ in
                        ControlPanelOrderCardComponent()
                    }
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    Orders()
}
