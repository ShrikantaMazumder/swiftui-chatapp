//
//  SearchBar.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 10/8/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal,40)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .foregroundColor(.gray)
                       
                )
                .onTapGesture {
                    self.isEditing = true
                }
            Spacer()
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    UIApplication.shared.endEditing()
                }, label: {
                    Text("Cancel")
                })
                .transition(.move(edge: .leading))
                .animation(.easeInOut)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search"), isEditing: .constant(false))
    }
}
