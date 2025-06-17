//
//  Profile.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        VStack(spacing: 24) {
            
            ProfileHeaderComponent()
            
            ProfileCardComponent()
            
            ProfileQRCodeComponent()
            
            Spacer().frame(height: 16)
            
            VStack(spacing: 16) {
                OptionRowComponent(iconName: "headphones", title: "Contact US", isDestructive: false)
                OptionRowComponent(iconName: "info.circle", title: "About US", isDestructive: false)
                OptionRowComponent(iconName: "door.right.hand.open", title: "Logout", isDestructive: true)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top, 16)
        
    }
}

#Preview {
    Profile()
}
