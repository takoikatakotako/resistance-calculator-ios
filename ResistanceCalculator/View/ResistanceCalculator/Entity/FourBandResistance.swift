import Foundation

class FourBandResistance {
    var firstBandIndex: Int = 2
    var secondBandIndex: Int = 3
    var thirdBandIndex: Int = 4
    var fourthBandIndex: Int = 5
    
    var resistance: Resistance? {
        guard let firstNumber = firstBandColorCode.number,
              let secondNumber = secondBandColorCode.number,
              let multiplier = thirdBandColorCode.multiplier,
              let error = fourthBandColorCode.error else {
            return nil
        }
              
        let resistance = (firstNumber * 10 + secondNumber) * multiplier
        let errorResistance = resistance * (error / 100)
        return Resistance(resistance: resistance, error: error, errorResistance: errorResistance)
    }
    
    let firstBands = [
        ResistanceColor.black,
        ResistanceColor.brown,
        ResistanceColor.red,
        ResistanceColor.orange,
        ResistanceColor.yellow,
        ResistanceColor.green,
        ResistanceColor.blue,
        ResistanceColor.purple,
        ResistanceColor.gray,
        ResistanceColor.white,
    ]
    let secondBands = [
        ResistanceColor.black,
        ResistanceColor.brown,
        ResistanceColor.red,
        ResistanceColor.orange,
        ResistanceColor.yellow,
        ResistanceColor.green,
        ResistanceColor.blue,
        ResistanceColor.purple,
        ResistanceColor.gray,
        ResistanceColor.white,
    ]
    let thirdBands = [
        ResistanceColor.black,
        ResistanceColor.brown,
        ResistanceColor.red,
        ResistanceColor.orange,
        ResistanceColor.yellow,
        ResistanceColor.green,
        ResistanceColor.blue,
        ResistanceColor.purple,
        ResistanceColor.white,
        ResistanceColor.gold,
        ResistanceColor.silver,
    ]
    let fourthBands = [
        ResistanceColor.brown,
        ResistanceColor.red,
        ResistanceColor.orange,
        ResistanceColor.green,
        ResistanceColor.blue,
        ResistanceColor.purple,
        ResistanceColor.gold,
        ResistanceColor.silver,
    ]
    
    var firstBandColorCode: ResistanceColor {
        return firstBands[firstBandIndex]
    }
    
    var secondBandColorCode: ResistanceColor {
        return secondBands[secondBandIndex]
    }
    
    var thirdBandColorCode: ResistanceColor {
        return thirdBands[thirdBandIndex]
    }
    
    var fourthBandColorCode: ResistanceColor {
        return fourthBands[fourthBandIndex]
    }
}
