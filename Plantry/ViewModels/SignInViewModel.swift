//
//  SignInViewModel.swift
//  Plantry
//
//  Created by Emirates on 19/10/2022.
//

import Foundation
import Firebase

class SignInViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }

    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
}
