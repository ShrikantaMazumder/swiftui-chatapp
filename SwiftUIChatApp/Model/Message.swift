//
//  Message.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 11/8/21.
//

import Foundation

struct Message: Identifiable {
    let id = UUID()
    let isFromCurrentUser: Bool
    let message: String
}
