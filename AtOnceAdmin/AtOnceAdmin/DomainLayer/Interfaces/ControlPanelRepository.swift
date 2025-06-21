//
//  ControlPanelRepository.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation
import Combine

protocol ControlPanelRepository {
    func getControlPanelStats(representativeId: Int) -> AnyPublisher<ControlPanelStats, Error>
}
