import Foundation

class FourBandResistance {
    var firstBandIndex: Int = 2
    var secondBandIndex: Int = 3
    var thirdBandIndex: Int = 4
    var fourBandIndex: Int = 5
    
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
        ResistanceColor.gray,
        ResistanceColor.white,
        ResistanceColor.gold,
        ResistanceColor.silver,
    ]
    let fourthBands = [
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
    
    var fourBandColorCode: ResistanceColor {
        return fourthBands[fourBandIndex]
    }
}
