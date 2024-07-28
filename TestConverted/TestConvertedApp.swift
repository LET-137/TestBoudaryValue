//
//  TestConvertedApp.swift
//  TestConverted
//
//  Created by 津本拓也 on 2024/07/28.
//

import SwiftUI

@main
struct TestConvertedApp: App {
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
