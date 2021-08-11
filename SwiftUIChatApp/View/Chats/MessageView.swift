//
//  MessageView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 11/8/21.
//

import SwiftUI

struct MessageView: View {
    var isFromCurrentUser: Bool
    var message: String
    
    var body: some View {
        if isFromCurrentUser {
            HStack {
                Spacer()
                Text(message)
                    .padding(12)
                    .background(Color(.blue))
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .padding(.leading, 80)
            }
            .padding(.horizontal)
        } else {
            HStack(alignment: .bottom) {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(message)
                    .padding(12)
                    .background(Color(.systemGray5))
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                    .clipShape(ChatBubble(isFromCurrentUser: false))
            }
            .padding(.horizontal)
            .padding(.trailing, 60)
            Spacer()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(isFromCurrentUser: true, message: "Preview")
    }
}
