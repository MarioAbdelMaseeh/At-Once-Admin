//
//  RootView.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 18/06/2025.
//

import SwiftUI

struct RootView: View {
    
    @StateObject private var appState = AppState()

    var body: some View {
        NavigationStack(path: $appState.path) {
            if appState.isLoggedIn {
                ControlPanelWithDrawer()
                    .environmentObject(appState)
                    .navigationBarBackButtonHidden(true)
                    .toolbarRole(.editor) // disables swipe back
            } else {
                Login {
                    appState.login()
                }
            }
        }
    }
}

