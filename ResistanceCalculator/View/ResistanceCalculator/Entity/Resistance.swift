import Foundation

struct Resistance {
    let resistance: Double
    let error: Double
    let errorResistance: Double
    
    var resistanceString: String {
        return convertToResist(value: resistance)
    }
    
    var errorString: String {
        return String(error) + " %"
    }
    
    var errorResistanceString: String {
        return convertToResist(value: errorResistance)
    }
    
    private func convertToResist(value:Double) -> String{
        if value < 1e3 {
            return String(value) + " Ω" 
        }else if value < 1e6{
            return String(value / 1e3) + " KΩ"
        }else if value < 1e9{
            return String(value / 1e6) + " MΩ"
        }else if value < 1e12{
            return String(value / 1e9) + " GΩ"
        }else if value < 1e15{
            return String(value / 1e12) + " TΩ"
        }
        return String(value)
    }
}
