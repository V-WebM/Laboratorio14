//
//  SignInView.swift
//  iOSAppTemplate
//
//  Created by Juan Renato on 18/06/22.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject var authViewModel = AuthViewModel()
    @EnvironmentObject var appState: AppState
    @State private var email : String = ""
    @State private var password : String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing : 15) {
                    Text("Hello Aganin")
                        .font(.system(size: 25, weight: .bold))
                    Text("welcome back yo ' ve missed")
                        .font(.system(size: 20))
                        .frame(maxWidth : 200)
                    
                    VStack(spacing : 25)  {
                        TextField("Enter you email", text: $email)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                            .keyboardType(.emailAddress)
                        
                        SecureField("Enter you password", text: $email)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                            .keyboardType(.emailAddress)
                        Button {
                            authViewModel.login(email: email, password: password)
                        } label: {
                            Text("sign in ")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .background(.pink)
                        .cornerRadius(8)
                        
                        NavigationLink(destination : SingUpView()){
                            Text("Not a member? resiter now")
                        }
                    }.padding()
                }
            }.accentColor(.pink)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
