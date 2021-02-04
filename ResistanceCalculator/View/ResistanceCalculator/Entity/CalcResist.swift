//import UIKit
//
//class CalcResist: NSObject {
//    
//    class func getNumRowColors() -> Array<ColorCode>{
//        return [ColorCode.init(color: ResistColor.black), ColorCode.init(color: ResistColor.brown), ColorCode.init(color: ResistColor.red), ColorCode.init(color: ResistColor.orange), ColorCode.init(color: ResistColor.yellow), ColorCode.init(color: ResistColor.green), ColorCode.init(color: ResistColor.blue), ColorCode.init(color: ResistColor.purple), ColorCode.init(color: ResistColor.gray), ColorCode.init(color: ResistColor.white)] as [ColorCode]
//    }
//    
//    class func getMultiplierRowColors() -> Array<ColorCode>{
//        return [ColorCode.init(color: ResistColor.brown), ColorCode.init(color: ResistColor.red), ColorCode.init(color: ResistColor.orange), ColorCode.init(color: ResistColor.yellow), ColorCode.init(color: ResistColor.green), ColorCode.init(color: ResistColor.blue), ColorCode.init(color: ResistColor.purple), ColorCode.init(color: ResistColor.gray), ColorCode.init(color: ResistColor.white), ColorCode.init(color: ResistColor.gold), ColorCode.init(color: ResistColor.silver)] as [ColorCode]
//    }
//    
//    class func getErrorRowColors() -> Array<ColorCode>{
//        return [ColorCode.init(color: ResistColor.brown), ColorCode.init(color: ResistColor.red), ColorCode.init(color: ResistColor.orange), ColorCode.init(color: ResistColor.green), ColorCode.init(color: ResistColor.blue), ColorCode.init(color: ResistColor.purple), ColorCode.init(color: ResistColor.gold), ColorCode.init(color: ResistColor.silver)] as [ColorCode]
//    }
//    
//    class func getNumberOfRows(component:Int, isResist4:Bool) -> Int{
//        
//        if isResist4{
//            switch component {
//            case 0:
//                return getNumRowColors().count
//            case 1:
//                return getNumRowColors().count
//            case 2:
//                return getMultiplierRowColors().count
//            case 3:
//                return getErrorRowColors().count
//            default:
//                print("Error")
//                return 0
//            }
//        }else{
//            switch component {
//            case 0:
//                return getNumRowColors().count
//            case 1:
//                return getNumRowColors().count
//            case 2:
//                return getNumRowColors().count
//            case 3:
//                return getMultiplierRowColors().count
//            case 4:
//                return getErrorRowColors().count
//            default:
//                print("Error")
//                return 0
//            }
//        }
//    }
//
//    class func getPickerCell(row:Int, component:Int, isResist4:Bool) -> ColorCode{
//        if isResist4{
//            switch component {
//            case 0:
//                return getNumRowColors()[row]
//            case 1:
//                return getNumRowColors()[row]
//            case 2:
//                return getMultiplierRowColors()[row]
//            case 3:
//                return  getErrorRowColors()[row]
//            default:
//                print("Error")
//                return ColorCode.init(color: ResistColor.error)
//            }
//        
//        }else{
//            
//            switch component {
//                
//            case 0:
//                return getNumRowColors()[row]
//            case 1:
//                return getNumRowColors()[row]
//            case 2:
//                return getNumRowColors()[row]
//            case 3:
//                return getMultiplierRowColors()[row]
//            case 4:
//                return getErrorRowColors()[row]
//            default:
//                print("Error")
//                return ColorCode.init(color: ResistColor.error)
//            }
//        }
//    }
//}
