//
//  TestConvertedTests.swift
//  TestConvertedTests
//
//  Created by 津本拓也 on 2024/07/28.
//

import XCTest
@testable import TestConverted

final class TestConvertedTests: XCTestCase {
    private var sut: Converters!
    private let lower = "お金がありません"
    private let nomal = "適切です"
    private let upper = "たくさんあります"
    private let others = "数値を入力してください"
    
    override func setUpWithError() throws {
        sut = Converters()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_convert_boundaryValueInput0() {
        let actual = sut.convertMoney(money: "0")
        let expected = lower
        XCTAssertEqual(actual, expected)
    }
    
    func test_convert_boundaryValueInput1() {
        let actual = sut.convertMoney(money: "1")
        let expected = nomal
        XCTAssertEqual(actual, expected)
    }
    
    func test_convert_boundaryValueInput100() {
        let actual = sut.convertMoney(money: "100")
        let expected = nomal
        XCTAssertEqual(actual, expected)
    }
    
    func test_convert_boundaryValueInput101() {
        let actual = sut.convertMoney(money: "101")
        let expected = upper
        XCTAssertEqual(actual, expected)
    }
    
    func test_convert_boundaryValueInputAllNumber() {
        let actual = [
            (value: "-1", expected: lower),
            (value: "0", expected: lower),
            (value: "1", expected: nomal),
            (value: "100", expected: nomal),
            (value: "101", expected: upper),
            (value: "1000000", expected: upper),
        ]
        
        actual.forEach() { value, expected in
            let result = sut.convertMoney(money: value)
            XCTAssertEqual(result, expected)
        }
    }
    
    func test_convert_boundaryValueInputString() {
        let actual = [
            (value: "abc", expected: others),
            (value: "ABC", expected: others),
            (value: "&$%", expected: others),
        ]
        
        actual.forEach() { value, expected in
            let result = sut.convertMoney(money: value)
            XCTAssertEqual(result, expected)
        }
    }
}
