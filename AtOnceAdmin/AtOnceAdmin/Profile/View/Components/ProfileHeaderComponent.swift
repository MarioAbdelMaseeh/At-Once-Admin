//
//  ProfileHeaderComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct ProfileHeaderComponent: View {
    var body: some View {
        
        HStack {
            
            Button(action: {
                // handle back
            }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.primary)
            }
            
            Spacer()
            
            Text("Profile")
                .font(.title2)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: {
                // handle language switch
            }) {
                Image(systemName: "globe")
                    .font(.system(size: 20))
                    .foregroundColor(.primary)
            }
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    ProfileHeaderComponent()
}
