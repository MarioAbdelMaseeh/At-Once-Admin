//
//  ControlPanelOrderCardComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanelOrderCardComponent: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Hamada Pharma Company")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("3 New orders")
                    .font(.subheadline)
                    .foregroundColor(Color.teal)
            }
            Spacer()
            Text("199 EGP")
                .font(.subheadline)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 1)
        
    }
}

#Preview {
    ControlPanelOrderCardComponent()
}
