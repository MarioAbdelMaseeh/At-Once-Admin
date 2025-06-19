//
//  Customers.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct Customers: View {
    var body: some View {
        
        VStack {
            
            SearchBarComponent(searchText: .constant(""))
                .padding(.horizontal, 24)
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(0..<10) { _ in
                        CustomersCardComponent()
                    }
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Customers")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
        }
        
    }
}

#Preview {
    Customers()
}
