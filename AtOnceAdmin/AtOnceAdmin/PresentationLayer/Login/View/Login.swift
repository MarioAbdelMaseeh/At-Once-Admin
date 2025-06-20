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
                
                Text("welcome_back")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primaryColor)
                
                Spacer().frame(height: 4)
                
                Text("to_continue_login_now")
                    .font(.system(size: 14, weight: .semibold))
                    .multilineTextAlignment(.center)
                
                Spacer().frame(height: 32)
                
                TextFieldComponent(title: "email", text: $email, isSecure: false)
                    .padding(.horizontal, 16)
                
                Spacer().frame(height: 28)
                
                TextFieldComponent(title: "password", text: $password, isSecure: true)
                    .padding(.horizontal, 16)
                
                Spacer().frame(height: 48)
                
                
                Button("login") {
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
