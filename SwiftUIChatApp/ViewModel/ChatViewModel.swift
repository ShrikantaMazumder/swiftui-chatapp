//
//  ChatViewModel.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 11/8/21.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()
    
    init() {
        messages = mockMessages
    }
    var mockMessages: [Message] {
        [
            .init(isFromCurrentUser: true, message: "Hello there"),
            .init(isFromCurrentUser: false, message: "Hello there"),
            .init(isFromCurrentUser: true, message: "Hello there"),
            .init(isFromCurrentUser: true, message: "Hello there"),
            .init(isFromCurrentUser: false, message: "Hello there"),
            .init(isFromCurrentUser: false, message: "Hello there"),
            .init(isFromCurrentUser: true, message: "Hello there"),
            .init(isFromCurrentUser: false, message: "Hello there"),
            .init(isFromCurrentUser: true, message: "Hello there"),
            .init(isFromCurrentUser: false, message: "Hello there"),
            .init(isFromCurrentUser: true, message: "Hello there"),
            .init(isFromCurrentUser: true, message: "Hello there"),
        ]
    }
    
    func sendMessage( _ message: String) {
        messages.append(Message(isFromCurrentUser: true, message: message))
        print("Message sent")
    }
}
