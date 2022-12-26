//
//  AuthViewModel.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/23/22.
//

import SwiftUI
import Firebase


class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticateUser = false
    //firebaseAuth
    
    init(){
        
       self.userSession = Auth.auth().currentUser
        
        print("Debug: User session is \(self.userSession?.uid)")
    }
    func login(withEmail email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Debug failed to sign in with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("did log user in ")
            
        }
        
        
        
    }
    func register(withEmail email: String, password:String, fullname:String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Debug failed to register with error\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            
            print("DEBUG REGSTER USER SUCESSFULLY ")
            print("debug: user is \(self.userSession)")
            
            let data = ["email": email,
                        "username": username.lowercased(),
                        "fullname": fullname,
                        "uid": user.uid]
            
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true
                }
        }

        
    }
    func signOut() {
        //sets user session to nil so we show login view
        userSession = nil
        
        
        
        //signs user out on backend/server
     try? Auth.auth().signOut()
    }
}
