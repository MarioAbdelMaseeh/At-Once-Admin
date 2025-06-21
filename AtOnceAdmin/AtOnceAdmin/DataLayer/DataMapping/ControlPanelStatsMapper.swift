//
//  ControlPanelStatsMapper.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation

extension ControlPanelStatsDTO {
    func toEntity() -> ControlPanelStats {
        return ControlPanelStats(pharmacyCount: self.pharmacyCount, revenue: self.revenue, stats: self.stats)
    }
}
