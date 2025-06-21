//
//  Representative.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

struct LoginResponse: Encodable {
    var token: String
    var message: String
    var success: Bool
    var representativeDTO: RepresentativeDTO
}
struct RepresentativeDTO: Encodable{
    var id: Int
    var code: String
    var name: String
    var address: String
    var governate: String
    var email: String
    var phone: String
}
