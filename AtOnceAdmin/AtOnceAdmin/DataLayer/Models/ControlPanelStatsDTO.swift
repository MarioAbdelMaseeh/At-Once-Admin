//
//  StatsDTO.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation

struct APIResponse<T: Decodable>: Decodable {
    let items: T
//    let status: Int?
//    let message: String?
}

struct ControlPanelStatsDTO: Codable {
    let pharmacyCount: Int
    let revenue: Double
    let stats: OrderStats
}

struct OrderStats: Codable {
    let ordered: Int
    let delivered: Int
    let cancelled: Int
    let returned: Int

    private enum CodingKeys: String, CodingKey {
        case ordered = "Ordered"
        case delivered = "Delivered"
        case cancelled = "Cancelled"
        case returned = "Returned"
    }
}

