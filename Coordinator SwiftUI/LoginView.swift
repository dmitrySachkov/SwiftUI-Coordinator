//
//  LoginView.swift
//  Coordinator SwiftUI
//
//  Created by Dmitry Sachkov on 23.11.2024.
//

import SwiftUI

struct LoginView: View {
    
    let title: String
    
    @Environment(Coordinator<LoginCoordinatorPages>.self) private var coordinator
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinator
    
    var body: some View {
        List {
            Button("Forgot password") {
                coordinator.push(.forgotPassword)
            }
            
            Button("Pop") {
                mainCoordinator.pop(type: .sheet)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    NavigationStack {
        LoginView(title: "Example")
    }
}

