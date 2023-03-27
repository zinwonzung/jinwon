//
//  jinwonApp.swift
//  jinwon
//
//  Created by 정진원 on 2023/03/27.
//

import SwiftUI

@main
struct jinwonApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
