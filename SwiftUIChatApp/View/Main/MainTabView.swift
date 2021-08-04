//
//  MainTabView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 30/7/21.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                ConversationView()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "bubble.left")
                        Text("Chats")
                    }
                    .tag(0)
                
                ChannelsView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("Groups")
                    }
                    .tag(1)
                
                SettingsView()
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                    .tag(2)
            }
            .navigationTitle(tabTitle)
        }
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0:
            return "Chats"
        case 1:
            return "Channels"
        case 2:
            return "Settings"
        default:
            return ""
        }
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
