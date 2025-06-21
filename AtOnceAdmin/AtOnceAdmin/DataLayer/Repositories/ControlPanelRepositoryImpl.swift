//
//  ControlPanelRepositoryImpl.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation
import Combine

class ControlPanelRepositoryImpl: ControlPanelRepository{

    let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func getControlPanelStats(representativeId: Int) -> AnyPublisher<ControlPanelStats, any Error> {
        return networkService.request(_request: ControlPanelAPI.getControlPanelStats(representativeId: representativeId), responseType: ControlPanelStatsDTO.self)
            .map{$0.toEntity()}
            .eraseToAnyPublisher()
    }
    
}
