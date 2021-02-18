import Foundation

struct Resistance {
    let resistance: Double
    let error: Double
    let errorResistance: Double
    
    var resistanceString: String {
        return convertToResist(value: resistance)
    }
    
    var errorString: String {
        return removeZerosFromEnd(value: error) + " %"
    }
    
    var errorResistanceString: String {
        return convertToResist(value: errorResistance)
    }
        
    func convertToResist(value: Double) -> String {
        if value < 1e3 {
            return removeZerosFromEnd(value: value) + " Ω"
        }else if value < 1e6{
            return removeZerosFromEnd(value: value / 1e3) + " KΩ"
        }else if value < 1e9{
            return removeZerosFromEnd(value: value / 1e6) + " MΩ"
        }else if value < 1e12{
            return removeZerosFromEnd(value: value / 1e9) + " GΩ"
        }else if value < 1e15{
            return removeZerosFromEnd(value: value / 1e12) + " TΩ"
        }
        return removeZerosFromEnd(value: value)
    }
    
    func removeZerosFromEnd(value: Double) -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: value)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16
        return String(formatter.string(from: number) ?? "")
    }
}
