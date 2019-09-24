import UIKit

// enumの中で値を持てる
enum TX: String {
    case akihabara = "秋葉原"
    case asakusa = "浅草"
    case ibaraki = "茨城"
    
    var timeFromHiroo: Int {
        switch self {
        case .akihabara:
            return 20
        case .asakusa:
            return 30
        case .ibaraki:
            return 60
        }
    }
}


let txStation: TX = .akihabara

// つくばエクスプレスの駅を配列に格納
let txStations: [TX] = [.akihabara, .asakusa, .ibaraki]

txStations.forEach { txStation in
    print("\(txStation.rawValue): \(txStation.timeFromHiroo)")
}
    
// 型変換
// String -> Int
let string: String = "1"

if let int = Int(string) {
    print(int)
}

// Int -> String
let intNumber: Int = 33
let stringNumber : String = String(intNumber)
print(stringNumber)

// String -> Double
let stringNum : String = "13.14"
if let doubleNum = Double(stringNum){
    print(doubleNum)
}

// Double -> String
let double: Double = 3.14
let doubleString : String = String(double)
print(doubleString)





