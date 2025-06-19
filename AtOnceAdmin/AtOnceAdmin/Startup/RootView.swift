//
//  RootView.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 18/06/2025.
//

import SwiftUI

struct RootView: View {
    
    @State private var isLoggedIn = false
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            if isLoggedIn {
                // This becomes the new root after login
                ControlPanelWithDrawer()
                    .navigationBarBackButtonHidden(true) // hides back
                    .toolbarRole(.editor) // disables swipe back gesture
            } else {
                // Pass callback to update login state
                Login {
                    isLoggedIn = true
                    path.removeLast(path.count) // clears stack
                }
            }
        }.tint(.primary)
    }
}

