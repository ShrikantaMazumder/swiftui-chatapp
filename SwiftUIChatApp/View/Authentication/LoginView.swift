//
//  Login.swift
//  SwiftUIChatApp
//
//  Created by Shrikanta Mazumder on 29/7/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Hello.")
                            .bold()
                        Text("Welcome Back")
                            .bold()
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(.largeTitle, design: .rounded))
                    Spacer()
                }
            
                
                VStack(spacing: 40) {
                    CustomTextField(imageName: "envelope", placeholder: "Email", text: $email, isSecured: false)
                    CustomTextField(imageName: "lock", placeholder: "Password", text: $password, isSecured: true)
                    
                }
                .padding([.horizontal, .top], 32)
                .padding(.bottom)
                
                
                HStack {
                    Spacer()
                    NavigationLink(
                        destination: Text("Reset Password"),
                        label: {
                            Text("Forget Password?")
                                .font(.system(size: 13, weight: .semibold, design: .rounded))
                        })
                       
                }
                
                Button(action: {
                    print("Button")
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0, y: 5)
                
                Spacer()
                    
                    NavigationLink(
                        destination: RegistrationView()
                            .navigationBarBackButtonHidden(true),
                        label: {
                            HStack {
                                Text("Don't have account?")
                                    .font(.system(size: 14))
                                Text("Signup")
                                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                            }
                        })
                        .padding(.bottom)
                        
                
            }
            .padding()
        }
        .padding(.top, -56)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

