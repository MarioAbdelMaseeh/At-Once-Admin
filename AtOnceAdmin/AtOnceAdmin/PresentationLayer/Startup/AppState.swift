//
//  AppState.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 19/06/2025.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    
    @Published var isLoggedIn = false
    @Published var path = NavigationPath()
    
    func login() {
        isLoggedIn = true
        path = NavigationPath()
    }
    
    func logout() {
        isLoggedIn = false
        path = NavigationPath()
    }
}
