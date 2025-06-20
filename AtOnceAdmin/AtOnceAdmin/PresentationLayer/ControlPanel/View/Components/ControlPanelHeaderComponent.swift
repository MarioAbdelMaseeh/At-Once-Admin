//
//  ControlPanelHeaderComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

struct ControlPanelHeaderComponent: View {
    var body: some View {
        
        HStack {
            
            Button(action: {
                // Open drawer action
            }) {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.primary)
            }
            
            Spacer()
            
            Text("Control Panel")
                .font(.title2)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: {
                // Profile action
            }) {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 20))
                    .foregroundColor(.primary)
            }
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    ControlPanelHeaderComponent()
}
