//
//  Drawer.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 18/06/2025.
//

import SwiftUI

struct Drawer: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            // Header
            VStack(alignment: .leading) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
                Spacer().frame(height: 16)
                
                Text("Hamada Hamada")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text("01012369852")
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.primaryColor)
            
            // Menu Items
            VStack(alignment: .leading, spacing: 16) {
                OptionRowComponent(iconName: "person.fill", title: "Profile", isDestructive: false)
                OptionRowComponent(iconName: "person.2.fill", title: "Customers", isDestructive: false)
                OptionRowComponent(iconName: "star.fill", title: "New Orders", isDestructive: false)
                OptionRowComponent(iconName: "cube.box.fill", title: "Delivered Orders", isDestructive: false)
                OptionRowComponent(iconName: "xmark.circle.fill", title: "Cancelled Orders", isDestructive: false)
                OptionRowComponent(iconName: "archivebox.fill", title: "Returned Orderes", isDestructive: false)
            }
            .padding(.top, 16)
            
            Divider()
                .padding(.vertical, 16)
            
            // Logout
            OptionRowComponent(iconName: "arrow.backward.square", title: "Logout", isDestructive: true)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        
        
    }
}

#Preview {
    Drawer()
}
