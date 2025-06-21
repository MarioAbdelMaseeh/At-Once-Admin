//
//  LoginUseCase.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

import Combine

protocol LoginUseCase{
    func excuite(email: String, password: String) -> AnyPublisher<LoginResponse, any Error>
}

class LoginUseCaseImpl: LoginUseCase{
    
    let authRepo: AuthRepository
    init(authRepo: AuthRepository) {
        self.authRepo = authRepo
    }
    
    func excuite(email: String, password: String) -> AnyPublisher<LoginResponse, any Error> {
        authRepo.login(email: email, password: password)
    }
    
}
