//
//  ControlPanelViewModel.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation
import Combine

protocol ControlPanelViewModelProtocol: ObservableObject{
    
}

class ControlPanelViewModel: ControlPanelViewModelProtocol {
    
    @Published var controlPanelStats: ControlPanelStats?
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private var cancellables = Set<AnyCancellable>()
    let useCase: GetControlPanelStatsUseCase
    
    init(useCase: GetControlPanelStatsUseCase){
        self.useCase = useCase
        fetchControlPanelStats(representativeId: 1)
    }
    
    func fetchControlPanelStats(representativeId: Int){
        isLoading = true
        
        useCase.excute(representativeId: representativeId).sink { [weak self] completion in
            self?.isLoading = false
            if case let .failure(error) = completion{
                self?.errorMessage = error.localizedDescription
                print(error.localizedDescription)
            }
        }receiveValue: {[weak self] controlPanelStats in
            self?.controlPanelStats = controlPanelStats
        }.store(in: &cancellables)
        
    }
    
}
