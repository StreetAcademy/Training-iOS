import UIKit

var str = "Hello, playground"

// enum
enum JR: String {
    case ebisu = "恵比寿"
    case shibuya = "渋谷"
    case ikebukuro = "池袋"
    case mejiro = "目白"
    case meguro = "目黒"

    var timeFromUeno: Int {
        switch self {
        case .ebisu:
            return 27
        case .shibuya:
            return 25
        case .ikebukuro:
            return 14
        case .mejiro:
            return 15
        case .meguro:
            return 30
        }
    }
}

let station: JR = .ebisu

let stations: [JR] = [.ebisu, .shibuya, .ikebukuro]

stations.forEach { station in
    print("\(station.rawValue): \(station.timeFromUeno)")
}

// 型、型変換
// 型変換をすると、絶対Optionalになる
let string: String = "23"

if let int = Int(string) {
    print(int)
}

// 課題
// String -> Int
// Int -> String
// String -> Double
// Double -> String
