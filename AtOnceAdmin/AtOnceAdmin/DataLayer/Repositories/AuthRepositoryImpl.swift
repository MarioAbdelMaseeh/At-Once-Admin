//
//  AuthRepositoryImpl.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

import Combine

class AuthRepositoryImpl: AuthRepository{
    let network: NetworkServiceProtocol
    init(network: NetworkServiceProtocol) {
        self.network = network
    }
    
    func login(email: String, password: String) -> AnyPublisher<LoginResponse, any Error> {
        network.request(_request: AuthAPI.login(email: email, password: password), responseType: LoginResponseDTO.self)
            .map { $0.toEntity()}.eraseToAnyPublisher()
    }
    
    
}
