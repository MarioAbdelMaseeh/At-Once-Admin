//
//  AuthRepository.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

import Combine

protocol AuthRepository{
    func login(email: String, password: String)->AnyPublisher<LoginResponse, Error>
}
