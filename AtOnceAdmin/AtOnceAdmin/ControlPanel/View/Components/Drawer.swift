//
//  Drawer.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 18/06/2025.
//

import SwiftUI

struct Drawer: View {
    
    @State private var navigateToProfile = false
    @State private var navigateToCustomers = false
    
    @State private var navigateToNewOrders = false
    @State private var navigateToDeliveredOrders = false
    @State private var navigateToCancelledOrders = false
    @State private var navigateToReturnedOrders = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            // Header
            VStack(alignment: .leading) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
                Spacer().frame(height: 16)
                
                Text("Hamada Hamada")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text("01012369852")
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.primaryColor)
            
            // Menu Items
            VStack(alignment: .leading, spacing: 16) {
                Button(action: {
                    navigateToProfile = true
                }) {
                    OptionRowComponent(iconName: "person.crop.circle", title: "Profile", isDestructive: false)
                }.navigationDestination(isPresented: $navigateToProfile) {
                    Profile()
                }
                
                Divider()
                
                Button(action: {
                    navigateToCustomers = true
                }) {
                    OptionRowComponent(iconName: "person.2", title: "Customers", isDestructive: false)
                }.navigationDestination(isPresented: $navigateToCustomers) {
                    Customers()
                }
                
                Button(action: {
                    navigateToNewOrders = true
                }) {
                    OptionRowComponent(iconName: "star", title: "New Orders", isDestructive: false)
                }.navigationDestination(isPresented: $navigateToNewOrders) {
                    Orders(orderStatus: .new)
                }
                
                Button(action: {
                    navigateToDeliveredOrders = true
                }) {
                    OptionRowComponent(iconName: "truck.box", title: "Delivered Orders", isDestructive: false)
                }.navigationDestination(isPresented: $navigateToDeliveredOrders) {
                    Orders(orderStatus: .delivered)
                }
                
                Button(action: {
                    navigateToCancelledOrders = true
                }) {
                    OptionRowComponent(iconName: "x.circle", title: "Cancelled Orders", isDestructive: false)
                }.navigationDestination(isPresented: $navigateToCancelledOrders) {
                    Orders(orderStatus: .cancelled)
                }
                
                Button(action: {
                    navigateToReturnedOrders = true
                }) {
                    OptionRowComponent(iconName: "arrow.down.square", title: "Returned Orderes", isDestructive: false)
                }.navigationDestination(isPresented: $navigateToReturnedOrders) {
                    Orders(orderStatus: .returned)
                }
                
            }
            .padding(.top, 16)
            
            Divider()
                .padding(.vertical, 16)
            
            // Logout
            Button(action: {
                
            }){
                OptionRowComponent(iconName: "rectangle.portrait.and.arrow.forward", title: "Logout", isDestructive: true)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        
        
    }
}

#Preview {
    Drawer()
}
