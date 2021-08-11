//
//  CustomInputView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 11/8/21.
//

import SwiftUI

struct CustomInputView: View {
    @Binding var inputData: String
    var action: () -> Void
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                TextField("Message...", text: $inputData)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.body)
                    .frame(minHeight: 30)
                Button(action: action, label: {
                    Text("Send")
                        .bold()
                        .foregroundColor(.black)
                })
            }
            .padding(.bottom,8)
            .padding(.horizontal)
            
        }
    }
}
