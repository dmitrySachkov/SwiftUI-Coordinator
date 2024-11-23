//
//  Coordinator_SwiftUIApp.swift
//  Coordinator SwiftUI
//
//  Created by Dmitry Sachkov on 23.11.2024.
//

import SwiftUI

@main
struct Coordinator_SwiftUIApp: App {
    @State private var library = Library()
    var body: some Scene {
        WindowGroup {
            CoordinatorStack(MainCoordinatorPages.root)
        }
    }
}

