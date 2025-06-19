//
//  Profile.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct Profile: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack(spacing: 24) {
            
            //ProfileHeaderComponent()
            
            ProfileCardComponent()
            
            ProfileQRCodeComponent()
            
            Spacer().frame(height: 16)
            
            VStack(spacing: 16) {
                OptionRowComponent(iconName: "headphones", title: "Contact US", isDestructive: false)
                OptionRowComponent(iconName: "info.circle", title: "About US", isDestructive: false)
                
                // Logout
                Button(action: {
                    appState.logout()
                }) {
                    OptionRowComponent(iconName: "rectangle.portrait.and.arrow.forward", title: "Logout", isDestructive: true)
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top, 16)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Profile")
                    .font(.title3)
                    .fontWeight(.semibold)
            }

            // Right: Language Icon
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    // handle language switch
                }) {
                    Image(systemName: "translate")
                        .font(.system(size: 20))
                        .foregroundColor(.primary)
                }
            }
        }
    }
    
}

#Preview {
    Profile().environmentObject(AppState())
}
