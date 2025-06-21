//
//  ControlPanelStats.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation

struct ControlPanelStats: Identifiable {
    let id = UUID()
    let pharmacyCount: Int
    let revenue: Double
    let stats: OrderStats
}

