//
//  Login.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct Login: View {
    
    var onLoginSuccess: () -> Void
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 128, height: 128)
                    .clipShape(Circle())
                    .foregroundColor(Color.primaryColor)
                
                Spacer().frame(height: 32)
                
                Text("Welcome To \n At Once Admin !")
                    .font(.system(size: 28, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Spacer().frame(height: 32)
                
                TextFieldComponent(title: "Email", text: $email, isSecure: false)
                    .padding(.horizontal, 16)
                
                Spacer().frame(height: 28)
                
                TextFieldComponent(title: "Password", text: $password, isSecure: true)
                    .padding(.horizontal, 16)
                
                Spacer().frame(height: 48)
                
                
                Button("Login") {
                    // Validate email/password or call API
                    onLoginSuccess() //Call this to navigate
                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)
                .background(Color.primaryColor)
                .cornerRadius(8)
                .padding(.horizontal, 16)
            }
            .padding(.top, 32)
            Spacer()
        }
    }
}


#Preview {
    Login(onLoginSuccess: {})
}
