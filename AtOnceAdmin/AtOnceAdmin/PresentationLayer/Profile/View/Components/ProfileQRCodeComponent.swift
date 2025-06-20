//
//  ProfileQRCodeComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct ProfileQRCodeComponent: View {
    var body: some View {
        
        Image(systemName: "qrcode.viewfinder")
            .resizable()
            .scaledToFit()
            .frame(width: 170, height: 170)
            .padding()
        
    }
}

#Preview {
    ProfileQRCodeComponent()
}
