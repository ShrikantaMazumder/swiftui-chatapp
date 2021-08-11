//
//  ConversationCell.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 10/8/21.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4) {
                    Text("Shrikanta mazumder")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                    Text("This is the text for now")
                        .font(.system(size: 15))
                }
            }
            .foregroundColor(.black)
            .padding(.top)
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
