//
//  LoginToRepresentative.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//

extension LoginResponseDTO{
    func toEntity()->LoginResponse{
        LoginResponse(token: self.token, message: self.message, success: self.success,
                      representative: Representative(id: self.representative.id,
                                                     code: self.representative.code,
                                                     name: self.representative.name,
                                                     address: self.representative.address,
                                                     governate: self.representative.governate,
                                                     email: self.representative.email,
                                                     phone: self.representative.phone))
    }
}
