//
//  To_Do_List25App.swift
//  To_Do_List25
//
//  Created by Aleksandr Zhazhoyan on 04.04.2025.
//

import SwiftUI

@main
struct To_Do_List25App: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
