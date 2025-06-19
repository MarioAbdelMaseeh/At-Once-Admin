//
//  ControlPanelWithDrawer.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 19/06/2025.
//

import SwiftUI

struct ControlPanelWithDrawer: View {
    
    @EnvironmentObject var appState: AppState
    
    @State private var showDrawer = false
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            NavigationView {
                ControlPanel(showDrawer: $showDrawer)
            }
            .zIndex(0)
            
            if showDrawer {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            showDrawer = false
                        }
                    }
            }
            
            Drawer().environmentObject(appState) // use the shared one
                .frame(width: UIScreen.main.bounds.width * 0.80)
                .offset(x: showDrawer ? 0 : -UIScreen.main.bounds.width)
                .animation(.easeInOut(duration: 0.25), value: showDrawer)
                .zIndex(1)
        }
    }
}

#Preview {
    ControlPanelWithDrawer()
}

