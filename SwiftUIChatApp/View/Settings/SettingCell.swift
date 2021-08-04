//
//  SettingCell.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//

import SwiftUI

struct SettingCell: View {
    let viewModel: SettingCellViewModel
    var body: some View {
        VStack {
            HStack {
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .foregroundColor(.white)
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .background(viewModel.backgroundColor)
                    .cornerRadius(6)
                Text(viewModel.title)
                    .font(.system(size: 15))
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            Divider()
        }
        .padding([.horizontal, .top])
        .background(Color.white)
        
    }
}

