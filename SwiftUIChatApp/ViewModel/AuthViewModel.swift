//
//  AuthViewModel.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 12/8/21.
//

import Firebase

class AuthViewModel: NSObject, ObservableObject {
    func singIn() {
        
    }
    
    func registration(withEmail email: String, password: String, userName: String, fullName: String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            if let error = error {
                print("Debug: Failed to register with error. \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            let data: [String:Any] = [
                "email": email,
                "username": userName,
                "fullname": fullName
            ]
            
            Firestore.firestore().collection("users").document(user.uid).setData(data){_ in
                print("Debug: User data added")
            }
        }
    }
    
    func profileUpdate(){
        
    }
    
    func signOut() {
        
    }
}
