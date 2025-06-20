//
//  Currency.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 20/06/2025.
//

import Foundation
import SwiftUICore

enum Currency: String {
    case egp

    var title: LocalizedStringKey {
        switch self {
        case .egp: return "currency_egp"
        }
    }
}
