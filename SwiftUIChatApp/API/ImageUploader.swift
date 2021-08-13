//
//  ImageUploader.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 12/8/21.
//

import Foundation
import UIKit
import Firebase

struct ImageUploader {
    static func imageUpload(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        let fileName = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(fileName)")
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("Debug: Failed to upload image. \(error)")
                return
            }
                
            print("Debug: Successfully uploaded to firebase storage")
            ref.downloadURL { url, _ in
                guard let imageUrl = url?.absoluteString else { return }
                completion(imageUrl)
            }
        }
    }
}
