//
//  GetControlPanelStatsUseCase.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation
import Combine

protocol GetControlPanelStatsUseCase{
    func excute(representativeId: Int)-> AnyPublisher<ControlPanelStats, Error>
}

class GetControlPanelStatsUseCaseImpl: GetControlPanelStatsUseCase{
    
    let controlPanelRepository: ControlPanelRepository
    
    init(controlPanelRepository: ControlPanelRepository) {
        self.controlPanelRepository = controlPanelRepository
    }
    
    func excute(representativeId: Int) -> AnyPublisher<ControlPanelStats, any Error> {
        return controlPanelRepository.getControlPanelStats(representativeId: representativeId)
    }
    
}
