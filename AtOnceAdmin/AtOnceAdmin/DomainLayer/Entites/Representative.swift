//
//  Represintative.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//
struct LoginResponse{
    var token: String
    var message: String
    var success: Bool
    var representative: Representative
}
struct Representative{
    var id: Int
    var code: String
    var name: String
    var address: String
    var governate: String
    var email: String
    var phone: String
}
