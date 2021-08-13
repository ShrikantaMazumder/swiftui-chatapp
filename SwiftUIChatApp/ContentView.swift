//
//  ContentView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 29/7/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        Group{
            if  authViewModel.userSession != nil{
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
