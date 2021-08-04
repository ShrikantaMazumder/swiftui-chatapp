//
//  SettingsHeaderView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//
import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "person")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Shrikanta Mazumder")
                    .bold()
                    .font(.system(size: 18))
                Text("Available")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}
