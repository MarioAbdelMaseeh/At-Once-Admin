//
//  LoginToRepresentative.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

extension LoginResponse{
    func toEntity()->Representative{
        Representative(id: self.representativeDTO.id,
                       token: self.token, code: self.representativeDTO.code,
                       name: self.representativeDTO.name,
                       address: self.representativeDTO.address,
                       governate: self.representativeDTO.governate,
                       email: self.representativeDTO.email,
                       phone: self.representativeDTO.phone)
    }
}
