//
//  converters.swift
//  TestConverted
//
//  Created by 津本拓也 on 2024/07/28.
//

import Foundation

class Converters {
    private let lower = "お金がありません"
    private let nomal = "適切です"
    private let apper = "たくさんあります"
    private let others = "数値を入力してください"
    
    func convertMoney(money: String) -> String {
        guard let moneyValue = Double(money) else {
            return "数値を入力してください"
        }
        
        switch moneyValue {
        case ...0:
            return lower
        case 1..<101:
            return nomal
        case 101...:
            return apper
        default:
            return others
        }
    }
}
