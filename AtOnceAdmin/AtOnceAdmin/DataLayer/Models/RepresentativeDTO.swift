//
//  Representative.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

struct LoginResponseDTO: Codable {
    var token: String
    var message: String
    var success: Bool
    var representative: RepresentativeDTO
}
struct RepresentativeDTO: Codable{
    var id: Int
    var code: String
    var name: String
    var address: String
    var governate: String
    var email: String
    var phone: String
}
