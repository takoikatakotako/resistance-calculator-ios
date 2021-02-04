import SwiftUI

struct ResistanceColor {
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
        multiplier: nil,
        error: nil)
    
    static let brown = ResistanceColor(
        text: "茶",
        textColor: Color(UIColor.white),
        color: Color(UIColor.brown),
        number: 1,
        multiplier: nil,
        error: nil)
    
    static let red = ResistanceColor(
        text: "赤",
        textColor: Color(UIColor.white),
        color: Color(UIColor.red),
        number: 2,
        multiplier: nil,
        error: nil)
    
    static let orange = ResistanceColor(
        text: "橙",
        textColor: Color(UIColor.white),
        color: Color(UIColor.orange),
        number: 3,
        multiplier: nil,
        error: nil)
    
    static let yellow = ResistanceColor(
        text: "黄",
        textColor: Color(UIColor.black),
        color: Color(UIColor.yellow),
        number: 4,
        multiplier: nil,
        error: nil)
    
    static let green = ResistanceColor(
        text: "緑",
        textColor: Color(UIColor.white),
        color: Color(UIColor.green),
        number: 5,
        multiplier: nil,
        error: nil)
    
    static let blue = ResistanceColor(
        text: "青",
        textColor: Color(UIColor.white),
        color: Color(UIColor.blue),
        number: 6,
        multiplier: nil,
        error: nil)
    
    static let purple = ResistanceColor(
        text: "紫",
        textColor: Color(UIColor.white),
        color: Color(UIColor.purple),
        number: 7,
        multiplier: nil,
        error: nil)
    
    static let gray = ResistanceColor(
        text: "灰",
        textColor: Color(UIColor.white),
        color: Color(UIColor.gray),
        number: 8,
        multiplier: nil,
        error: nil)
    
    static let white = ResistanceColor(
        text: "白",
        textColor: Color(UIColor.white),
        color: Color(UIColor.black),
        number: 9,
        multiplier: nil,
        error: nil)
    
    static let gold = ResistanceColor(
        text: "金",
        textColor: Color(UIColor.black),
        color: Color(UIColor.yellow),
        number: nil,
        multiplier: nil,
        error: nil)
    
    static let silver = ResistanceColor(
        text: "銀",
        textColor: Color(UIColor.black),
        color: Color(UIColor.lightGray),
        number: nil,
        multiplier: nil,
        error: nil)
}
