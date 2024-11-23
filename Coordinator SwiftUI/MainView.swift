//
//  MainView.swift
//  Coordinator SwiftUI
//
//  Created by Dmitry Sachkov on 23.11.2024.
//

import SwiftUI

struct MainView: View {
    
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinator
    
    var body: some View {
        VStack {
            List {
                Button("Singn up") {
                    mainCoordinator.push(.signUp)
                }
                Button("Log in") {
                    mainCoordinator.push(.logIn(title: "Want to log in"), type: .sheet)
                }
            }
        }
    }
}

#Preview {
    MainView()
}


