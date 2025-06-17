//
//  OrdersSearchBarComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct OrdersSearchBarComponent: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("Search...", text: $searchText)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(8)
        }
        .padding(.horizontal)
        .background(Color(.systemGray6))
        .cornerRadius(6)
    }
}

#Preview {
    OrdersSearchBarComponent(searchText: .constant(""))
}
