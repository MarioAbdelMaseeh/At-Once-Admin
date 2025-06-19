//
//  ControlPanel.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

import SwiftUI

struct ControlPanel: View {
    
    @EnvironmentObject var appState: AppState
    
    @Binding var showDrawer: Bool
    @State private var navigateToProfile = false
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                ControlPanelCustomersCountComponent(count: 12)
                ControlPanelNewOrdersSectionComponent()
                ControlPanelRevenueCardComponent(revenue: 10000)
                ControlPanelChartComponent(data: [
                    "New Orders": 120,
                    "Delivered": 30,
                    "Canceled": 150,
                    "Returned": 10
                ])
            }
            .padding(.top, 16)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("Control Panel")
                    .font(.title3)
                    .fontWeight(.semibold)
            }

            // Left: Drawer Icon
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    withAnimation {
                        showDrawer.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.primary)
                }
            }

            // Right: Profile Icon
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    navigateToProfile = true
                }) {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 20))
                        .foregroundColor(.primary)
                }
            }
        }
        .navigationDestination(isPresented: $navigateToProfile) {
            Profile().environmentObject(appState)
        }
    }
}


#Preview {
    ControlPanel(showDrawer: .constant(true)).environmentObject(AppState())
}
