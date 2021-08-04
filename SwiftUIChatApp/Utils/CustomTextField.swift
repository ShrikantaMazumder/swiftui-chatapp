//
//  CustomTextField.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//

import SwiftUI

struct CustomTextField: View {
    
    let imageName: String
    let placeholder: String
    @Binding var text: String
    let isSecured: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                if isSecured {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

