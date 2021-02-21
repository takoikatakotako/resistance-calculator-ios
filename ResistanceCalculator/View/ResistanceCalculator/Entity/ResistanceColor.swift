import SwiftUI

struct ResistanceColor: Equatable {
    let text: String
    let textColor: Color
    let color: Color
    let number: Double?
    let multiplier: Double?
    let error: Double?
    
    static let black = ResistanceColor(
        text: "黒",
        textColor: Color(UIColor.white),
        color: Color(UIColor.black),
        number: 0,
        multiplier: 1e0,
        error: nil)
    
    static let brown = ResistanceColor(
        text: "茶",
        textColor: Color(UIColor.white),
        color: Color(UIColor.brown),
        number: 1,
        multiplier: 1e1,
        error: 1)
    
    static let red = ResistanceColor(
        text: "赤",
        textColor: Color(UIColor.white),
        color: Color(UIColor.red),
        number: 2,
        multiplier: 1e2,
        error: 2)
    
    static let orange = ResistanceColor(
        text: "橙",
        textColor: Color(UIColor.white),
        color: Color(UIColor.orange),
        number: 3,
        multiplier: 1e3,
        error: 0.05)
    
    static let yellow = ResistanceColor(
        text: "黄",
        textColor: Color(UIColor.black),
        color: Color(UIColor.yellow),
        number: 4,
        multiplier: 1e4,
        error: nil)
    
    static let green = ResistanceColor(
        text: "緑",
        textColor: Color(UIColor.white),
        color: Color(UIColor.green),
        number: 5,
        multiplier: 1e5,
        error: 0.5)
    
    static let blue = ResistanceColor(
        text: "青",
        textColor: Color(UIColor.white),
        color: Color(UIColor.blue),
        number: 6,
        multiplier: 1e6,
        error: 0.25)
    
    static let purple = ResistanceColor(
        text: "紫",
        textColor: Color(UIColor.white),
        color: Color(UIColor.purple),
        number: 7,
        multiplier: 1e7,
        error: 0.1)
    
    static let gray = ResistanceColor(
        text: "灰",
        textColor: Color(UIColor.white),
        color: Color(UIColor.gray),
        number: 8,
        multiplier: 1e8,
        error: nil)
    
    static let white = ResistanceColor(
        text: "白",
        textColor: Color(UIColor.black),
        color: Color(UIColor.white),
        number: 9,
        multiplier: 1e9,
        error: nil)
    
    static let gold = ResistanceColor(
        text: "金",
        textColor: Color(UIColor.black),
        color: Color(UIColor.yellow),
        number: nil,
        multiplier: 0.1,
        error: 5)
    
    static let silver = ResistanceColor(
        text: "銀",
        textColor: Color(UIColor.black),
        color: Color(UIColor.lightGray),
        number: nil,
        multiplier: 0.01,
        error: 10)
}
