//
//  viewModel.swift
//  TestConverted
//
//  Created by 津本拓也 on 2024/07/28.
//

import Foundation

final class ViewModel: ObservableObject {
    @Published var text = ""
    private var converter = Converters()
    
    func caluclation(money: String) -> String {
        let result = self.converter.convertMoney(money: money)
        return result
    }
}
