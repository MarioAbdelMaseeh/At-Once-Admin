//
//  LoginViewModel.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

import Combine
protocol LoginViewModelProtocol{
    func login(email: String, password: String)
}
class LoginViewModel:LoginViewModelProtocol, ObservableObject{
    let useCase: LoginUseCase
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var loginResponse: LoginResponse?
    private var cancellables = Set<AnyCancellable>()
    
    init(useCase: LoginUseCase) {
        self.useCase = useCase
    }
    func login(email: String, password: String) {
        self.isLoading = true
        useCase.excuite(email: email, password: password).sink {[weak self] completion in
            self?.isLoading = false
            if case let .failure(error) = completion{
                self?.errorMessage = error.localizedDescription
                print(error.localizedDescription)
            }
        } receiveValue: { [weak self] loginResponse in
            self?.loginResponse = loginResponse
        }.store(in: &cancellables)

    }
    
    
}
