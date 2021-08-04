//
//  SettingCellViewModel.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//

import SwiftUI

enum SettingCellViewModel: Int, CaseIterable {
    case account
    case notifications
    case starredMessage
    
    var title: String {
        switch self {
        case .account: return "Account"
        case .notifications: return "Notifications"
        case .starredMessage: return "Starred Messages"
        }
    }
    
    var imageName: String {
        switch self {
        case .account: return "key.fill"
        case .notifications: return "bell.badge.fill"
        case .starredMessage: return "star.fill"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .account: return .blue
        case .notifications: return .red
        case .starredMessage: return .yellow
        }
    }
}
