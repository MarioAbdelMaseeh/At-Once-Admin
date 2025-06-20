//
//  TextFieldComponent.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 16/06/2025.
//

import SwiftUI

struct TextFieldComponent: View {
    
    var title: LocalizedStringKey
    @Binding var text: String
    var isSecure: Bool = false
    @State private var isPasswordVisible = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .fontWeight(.semibold)
                .padding(.leading, 8)

            HStack {
                if isSecure && !isPasswordVisible {
                    SecureField(title, text: $text)
                        .padding()
                } else {
                    TextField(title, text: $text)
                        .padding()
                }

                if isSecure {
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing, 12)
                }
            }
            .background(Color(UIColor.systemGray6))
            .cornerRadius(10)
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        TextFieldComponent(title: "Email", text: .constant("Mario"), isSecure: false)
        TextFieldComponent(title: "Password", text: .constant("secret123"), isSecure: true)
    }
    .padding()
}

