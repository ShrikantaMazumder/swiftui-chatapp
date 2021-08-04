//
//  RegistrationView.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 29/7/21.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Get Started.")
                        .bold()
                    Text("Create Your Account")
                        .bold()
                        .foregroundColor(.blue)
                }
                .font(.system(.largeTitle, design: .rounded))

                Spacer()
            }
            VStack(spacing: 30) {
                CustomTextField(imageName: "envelope", placeholder: "Email", text: $email, isSecured: false)
                CustomTextField(imageName: "person", placeholder: "Username", text: $userName, isSecured: false)
                CustomTextField(imageName: "person", placeholder: "Full Name", text: $fullName, isSecured: false)
                CustomTextField(imageName: "lock", placeholder: "Password", text: $password, isSecured: true)
            }
            
            Button(action: {
                print("Signup")
            }, label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding(.top, 40)
            })
            .shadow(color: .gray, radius: 5, x: 0.0, y: 4)
            
            
            Spacer()
            
            Button(action: {
                mode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Text("Already have an account?")
                    Text("Log in")
                        .fontWeight(.semibold)
                        .font(.system(.subheadline, design: .rounded))
                        .foregroundColor(.blue)
                }
            })
            .padding(.bottom, 32)
        }
        .padding([.top, .horizontal], 32)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
