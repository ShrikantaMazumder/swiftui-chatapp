//
//  SettingsView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
      
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 32) {
                    NavigationLink(
                        destination: EditProfileView(),
                        label: {  SettingsHeaderView() })
                    VStack(spacing: 1) {
                        ForEach(SettingCellViewModel.allCases, id: \.self) {viewModel in
                            SettingCell(viewModel: viewModel)
                        }
                    }
                    
                    Button(action: {
                        authViewModel.signOut()
                    }, label: {
                        Text("Log out")
                            .font(.headline)
                            .bold()
                            .foregroundColor(.red)
                            .frame(width: UIScreen.main.bounds.width, height: 60)
                            .background(Color.white)
                    })
                    
                    Spacer()
                }
                
            }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


