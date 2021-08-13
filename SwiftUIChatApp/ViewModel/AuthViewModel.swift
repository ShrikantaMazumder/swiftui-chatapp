//
//  AuthViewModel.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 12/8/21.
//

import Firebase
import UIKit

class AuthViewModel: NSObject, ObservableObject {
    @Published var didAuthenticateUser = false
    @Published var userSession: FirebaseAuth.User?
    private var currentTempUser: FirebaseAuth.User?
    
    override init() {
        userSession = Auth.auth().currentUser
    }
    
    func singIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Debug: Failed to signIn \(error.localizedDescription)")
                return
            }
//            guard let user = result?.user else { return }
            self.userSession = result?.user
            
        }
    }
    
    func registration(withEmail email: String, password: String, userName: String, fullName: String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            if let error = error {
                print("Debug: Failed to register with error. \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.currentTempUser = user
            
            let data: [String:Any] = [
                "email": email,
                "username": userName,
                "fullname": fullName
            ]
            
            Firestore.firestore().collection("users").document(user.uid).setData(data){_ in
                self.didAuthenticateUser = true
                print("data added")
            }
        }
    }
    
    func profileUpdate(image: UIImage){
        guard let uid = currentTempUser?.uid else { return }
        ImageUploader.imageUpload(image: image) { imageUrl in
            Firestore.firestore().collection("users").document(uid).updateData(["profileImageUrl" : imageUrl]) {_ in
                print("Debug: Successfully updated userdata")
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            userSession = nil
        }  catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
          }
    }
}
