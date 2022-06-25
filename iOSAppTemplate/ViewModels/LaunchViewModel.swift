//
//  LaunchViewModel.swift
//  iOSAppTemplate
//
//  Created by Juan Renato on 11/06/22.
//

import Foundation
import FirebaseAuth

class LaunchViewModel : ObservableObject {
    
    
    let appState = AppState.shared
    
    init(){
        appState.currentScreen = Auth.auth().currentUser != nil ? .main : .signIn
    }
    
}
