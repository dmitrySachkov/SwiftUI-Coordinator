//
//  CoordinatorPages.swift
//  Coordinator SwiftUI
//
//  Created by Dmitry Sachkov on 23.11.2024.
//

import SwiftUI

enum MainCoordinatorPages: Coordinatable {
    var id: UUID { .init() }
    
    case root
    case logIn(title: String)
    case signUp
    
    var body: some View {
        switch self {
        case .root:
            @State var viewModel = Library()
            MainView()
                .environment(viewModel)
        case .logIn(let title):
            CoordinatorStack(LoginCoordinatorPages.root(title: title))
        case .signUp:
            SignUpView()
        }
    }
}

enum LoginCoordinatorPages: Coordinatable {
    var id: UUID { .init() }
    
    case root(title: String)
    case forgotPassword
    
    var body: some View {
        switch self {
        case .root(let title):
            LoginView(title: title)
        case .forgotPassword:
            ForgotPasswordView()
        }
    }
}

