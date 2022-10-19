//
//  PlantryApp.swift
//  Plantry
//
//  Created by Emirates on 08/10/2022.
//

import SwiftUI
import Firebase

@main
struct PlantryApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
