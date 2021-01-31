import UIKit

enum ResistColor: Int {
    case black
    case brown
    case red
    case orange
    case yellow
    case green
    case blue
    case purple
    case gray
    case white
    case gold
    case silver
    case error
}

class ColorCode {
    var name: String
    var number: Int?
    var multiplier: Double?
    var error: Double?
    let color: UIColor
    var textColor: UIColor
    
    init(color: ResistColor) {
        
        self.number = nil
        self.error = nil
        self.textColor = UIColor.white
        
        switch color {
        case ResistColor.black:
            self.name = "黒"
            self.number = 0
            self.multiplier = 1e0
            self.color = UIColor.black
        case ResistColor.brown:
            self.name = "茶"
            self.number = 1
            self.multiplier = 1e1
            self.error = 1 / 100
            self.color = UIColor.brown
        case ResistColor.red:
            self.name = "赤"
            self.number = 2
            self.multiplier = 1e2
            self.error = 2 / 100
            self.color = UIColor.red
        case ResistColor.orange:
            self.name = "橙"
            self.number = 3
            self.multiplier = 1e3
            self.error = 0.05 / 100
            self.color = UIColor.orange
        case ResistColor.yellow:
            self.name = "黄"
            self.number = 4
            self.multiplier = 1e4
            self.color = UIColor.yellow
        case ResistColor.green:
            self.name = "緑"
            self.number = 5
            self.multiplier = 1e5
            self.error = 0.5 / 100
            self.color = UIColor.green
        case ResistColor.blue:
            self.name = "青"
            self.number = 6
            self.multiplier = 1e6
            self.error = 0.25 / 100
            self.color = UIColor.blue
        case ResistColor.purple:
            self.name = "紫"
            self.number = 7
            self.multiplier = 1e7
            self.error = 0.1 / 100
            self.color = UIColor.purple
        case ResistColor.gray:
            self.name = "灰"
            self.number = 8
            self.multiplier = 1e8
            self.error = 0.05 / 100
            self.color = UIColor.gray
        case ResistColor.white:
            self.name = "白"
            self.number = 9
            self.multiplier = 1e9
            self.color = UIColor.white
            self.textColor = UIColor.black
        case ResistColor.gold:
            self.name = "金"
            self.multiplier = 1e-1
            self.color = R.color.gold()!
            self.textColor = UIColor.black
            self.error = 5 / 100
        case ResistColor.silver:
            self.name = "銀"
            self.multiplier = 1e-2
            self.color = UIColor.lightGray
            self.textColor = UIColor.black
            self.error = 5 / 100
        case ResistColor.error:
            self.name = "Error"
            self.color = UIColor.black
            self.textColor = UIColor.white
        }
    }
}
