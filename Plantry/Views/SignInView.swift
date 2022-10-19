//
//  ContentView.swift
//  Plantry
//
//  Created by Emirates on 08/10/2022.
//

import SwiftUI
import Firebase

struct SignInView: View {
    @ObservedObject var signInVM = SignInViewModel()
    var body: some View {
        ZStack {
            Color.black
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: 700, height: 1800)
                .rotationEffect(Angle(degrees: -45))
                .offset(y: -500)
            Circle()
                .frame(width: 330)
                .offset(x: 80, y: -200)
            VStack {
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                .fontWeight(.bold)
                Image(systemName: "leaf")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .foregroundColor(.blue)
                    
            }
            .offset(x: 80, y: -200)
                
            VStack(spacing: 20) {
                TextField("Email", text: $signInVM.email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .offset(x:  200)
                    .placeholder(when: signInVM.email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                            .offset(x: 200)
                }
//                    .offset(x: 200)
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
//                    .offset(x: -200)
                    
                SecureField("Password", text: $signInVM.password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .offset(x: 200)
                    .placeholder(when: signInVM.password.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                            .offset(x: 200)
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
//                    .offset(x: -200)
                
                Button {
                    signInVM.register()
                    signInVM.email = ""
                    signInVM.password = ""
                } label: {
                    Text("Sign Up")
                        .bold()
                        .frame(width: 170, height: 40)
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous))
                }
                .padding(.top)
                .offset(y: 80)
                
                Button {
                    signInVM.login()
                    signInVM.email = ""
                    signInVM.password = ""
                } label: {
                    Text("Already registered? Log in!")
                        .bold()
                        .foregroundColor(.white)
                }
                .offset(y: 80)
            }
        }
        .ignoresSafeArea()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
