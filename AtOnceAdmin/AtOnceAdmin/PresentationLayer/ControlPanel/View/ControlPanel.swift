//
//  ControlPanel.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import SwiftUI

import SwiftUI

struct ControlPanel: View {
    
    @StateObject var viewModel = ControlPanelViewModel(useCase: GetControlPanelStatsUseCaseImpl(controlPanelRepository: ControlPanelRepositoryImpl(networkService: NetworkService())))
    
    @EnvironmentObject var appState: AppState
    
    @Binding var showDrawer: Bool
    @State private var navigateToProfile = false
    
    var body: some View {
        
        ScrollView {
            if viewModel.isLoading{
                
            }else if viewModel.errorMessage != nil{
                
            }else{
                VStack {
                    if let controlPanelStats = viewModel.controlPanelStats {
                        ControlPanelCustomersCountComponent(count: controlPanelStats.pharmacyCount)
                        ControlPanelNewOrdersSectionComponent()
                        ControlPanelRevenueCardComponent(revenue: Int(controlPanelStats.revenue))
                        ControlPanelChartComponent(data: [
                            "New": controlPanelStats.stats.ordered,
                            "Delivered": controlPanelStats.stats.delivered,
                            "Canceled": controlPanelStats.stats.cancelled,
                            "Returned":controlPanelStats.stats.returned
                        ])
                    }
                    
                }.padding(.top, 16)
                    
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("control_panel")
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
