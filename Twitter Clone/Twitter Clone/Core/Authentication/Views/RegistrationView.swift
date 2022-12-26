//
//  LoginView.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/19/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        VStack{
//            
//            NavigationLink(destination: ProfilePhotoSelector(),
//                           isActive: $viewModel.didAuthenticateUser,
//                           label: { })
//            
            
            AuthHeaderView(title1: "Get Started.", title2: "Create Your Account")
            VStack(spacing: 40){
                CustomInputField(imagename: "envelope", placeholdertext: "Email", text: $email)
                CustomInputField(imagename: "person", placeholdertext: "Username", text: $username)
                CustomInputField(imagename: "person", placeholdertext: "Full Name", text: $fullname)
                CustomInputField(imagename: "lock",
                                 placeholdertext: "Password",
                                 isSecuredField: true,
                                 text: $password)
            }
            .padding(32)
            
            
            Button{
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            }label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x:0,y:0)
            
            
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            }label: {
                HStack{
                    Text("Already have an account?")
                        .font(.caption)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
            }
                .padding(.bottom,32)

            }
        }
        .ignoresSafeArea()
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
