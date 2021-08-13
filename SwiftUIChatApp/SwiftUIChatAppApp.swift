//
//  SwiftUIChatAppApp.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 29/7/21.
//

import SwiftUI
import Firebase

@main
struct SwiftUIChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
