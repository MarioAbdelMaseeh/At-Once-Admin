//
//  CustomersCardComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct CustomersCardComponent: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Luis Antonio Valencia")
                    .font(.headline)
                
                Spacer()
                
                Text("Active")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 4)
                    .background(Color.green)
                    .cornerRadius(16)
            }
            
            HStack(spacing: 8) {
                Image(systemName: "phone.fill")
                    .foregroundColor(.teal)
                Text("0123456789")
            }
            
            HStack(spacing: 8) {
                Image(systemName: "cross.fill")
                    .foregroundColor(.teal)
                Text("Manchester Pharmacy")
            }
            
            HStack(spacing: 8) {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.teal)
                Text("123 Main Street, City, Country")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.125), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 8)
        
    }
}

#Preview {
    CustomersCardComponent()
}
