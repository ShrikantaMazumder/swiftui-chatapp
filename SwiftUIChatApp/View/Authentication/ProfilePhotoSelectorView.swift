//
//  ProfilePhotoSelectorView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 12/8/21.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var authViewModel: AuthViewModel
    
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                } else {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 44)
                }
            }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage, content: {
                ImagePicker(image: $selectedImage)
            })
            
            Text(profileImage == nil ? "Select a profile Photo" : "Great! Tap below to continue")
            
            Spacer()
            
            if let image = selectedImage {
                Button(action: {
                    authViewModel.profileUpdate(image: image)
                }, label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 50)
                        .background(Color(.blue))
                        .clipShape(Capsule())
                    
                })
            }
            Spacer()

        }
        .navigationBarBackButtonHidden(true)

    }
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
