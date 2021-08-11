//
//  ConversationView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//

import SwiftUI

struct ConversationView: View {
    @State private var showNewMessage = false
    @State var showChatView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationLink(
                destination: ChatView(),
                isActive: $showChatView,
                label: { })
            // Chats
            ScrollView {
                VStack(alignment: .leading) {
                   
                    ForEach(0...5, id:\.self) {data in
                       NavigationLink(
                        destination: ChatView(),
                        label: {
                            ConversationCell()
                                .padding(.horizontal)
                        })
                    }
                }
            }
            // Floating butto$
            Button(action: {
                showNewMessage.toggle()
            }, label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding()
            })
            
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $showNewMessage) {
                NewMessageView(showChatView: $showChatView)
            }
        }
        
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
