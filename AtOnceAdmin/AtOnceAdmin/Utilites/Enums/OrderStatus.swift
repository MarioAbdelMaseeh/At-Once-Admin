//
//  OrderStatus.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 17/06/2025.
//

import Foundation
import SwiftUICore

enum OrderStatus {
    case new, delivered, cancelled, returned
    
    var title: LocalizedStringKey {
        switch self {
        case .new: return "order_status_new"
        case .delivered: return "order_status_delivered"
        case .cancelled: return "order_status_cancelled"
        case .returned: return "order_status_returned"
        }
    }
    
    var color: Color {
        switch self {
        case .new: return Color.blue
        case .delivered: return Color.green
        case .cancelled: return Color.red
        case .returned: return Color.orange
        }
    }
    
    var value: String {
        switch self {
        case .new: return "New"
        case .delivered: return "Delivered"
        case .cancelled: return "Cancelled"
        case .returned: return "Returned"
        }
    }
}
