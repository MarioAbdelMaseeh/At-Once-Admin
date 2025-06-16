//
//  ProfileCardComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct ProfileCardComponent: View {
    var body: some View {
        
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
                .foregroundColor(Color.black)
            
            Spacer().frame(width: 18)
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Hamada Hamada")
                    .fontWeight(.semibold)
                
                Text("See Account Details")
                    .foregroundColor(Color.primaryColor)
                    .font(.subheadline)
            }
            
            Spacer()
            
            Button(action: {
                // go to account details
            }) {
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                    .padding(6)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 4)
        .padding(.horizontal)
        
    }
}

#Preview {
    ProfileCardComponent()
}
