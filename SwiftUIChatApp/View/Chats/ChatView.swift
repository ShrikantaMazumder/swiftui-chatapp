//
//  ChatView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @ObservedObject var chatViewModel = ChatViewModel()
    var body: some View {
        VStack {
            // Message
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(chatViewModel.messages) {message in
                        MessageView(isFromCurrentUser: message.isFromCurrentUser, message: message.message)
                    }
                }
            }
            ///Input field
            CustomInputView(inputData: $messageText, action: sendMessage)
        }
        .padding(.vertical)
        .navigationTitle("Venom")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func sendMessage() {
        chatViewModel.sendMessage(messageText)
        messageText = ""
    }
}

