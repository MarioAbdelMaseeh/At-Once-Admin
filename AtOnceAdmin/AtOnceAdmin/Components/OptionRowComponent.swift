//
//  ProfileOptionRowComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct OptionRowComponent: View {
    
    var iconName: String
    var title: String
    var isDestructive: Bool = false
    
    var body: some View {
        
        HStack {
            Image(systemName: iconName)
                .frame(width: 24, height: 24)
                .foregroundColor(isDestructive ? .red : Color.primaryColor)
            
            Text(title)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.primary)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .frame(width: 12, height: 24)
                .foregroundColor(.primary)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity, minHeight: 40)
        .background(Color.white)
        .cornerRadius(12)
        
    }
}

#Preview {
    OptionRowComponent(iconName: "headphones", title: "Contact US", isDestructive: false)
    OptionRowComponent(iconName: "info.circle", title: "About US", isDestructive: false)
    OptionRowComponent(iconName: "door.right.hand.open", title: "Logout", isDestructive: true)
}
