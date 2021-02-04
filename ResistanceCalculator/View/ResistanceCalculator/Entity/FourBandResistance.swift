import Foundation

class FourBandResistance {
    var firstBandIndex: Int = 2
    var secondBandIndex: Int = 3
    var thirdBandIndex: Int = 4
    var fourBandIndex: Int = 5
    
    let firstBands = [ColorCode(color: .black), ColorCode(color: .brown), ColorCode(color: .red), ColorCode(color: .orange), ColorCode(color: .yellow), ColorCode(color: .green), ColorCode(color: .blue), ColorCode(color: .purple), ColorCode(color: .gray), ColorCode(color: .white),]
    let secondBands = [ColorCode(color: .black), ColorCode(color: .brown), ColorCode(color: .red), ColorCode(color: .orange), ColorCode(color: .yellow), ColorCode(color: .green), ColorCode(color: .blue), ColorCode(color: .purple), ColorCode(color: .gray), ColorCode(color: .white),]
    let thirdBands = [ColorCode(color: .black), ColorCode(color: .brown), ColorCode(color: .red), ColorCode(color: .orange), ColorCode(color: .yellow), ColorCode(color: .green), ColorCode(color: .blue), ColorCode(color: .purple), ColorCode(color: .gray), ColorCode(color: .white),]
    let fourthBands = [ColorCode(color: .black), ColorCode(color: .brown), ColorCode(color: .red), ColorCode(color: .orange), ColorCode(color: .yellow), ColorCode(color: .green), ColorCode(color: .blue), ColorCode(color: .purple), ColorCode(color: .gray), ColorCode(color: .white),]
    
    var firstBandColorCode: ColorCode {
        return firstBands[firstBandIndex]
    }
    
    var secondBandColorCode: ColorCode {
        return secondBands[secondBandIndex]
    }
    
    var thirdBandColorCode: ColorCode {
        return thirdBands[thirdBandIndex]
    }
    
    var fourBandColorCode: ColorCode {
        return fourthBands[fourBandIndex]
    }
}
