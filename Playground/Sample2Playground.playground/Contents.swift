import UIKit

var str = "Hello, playground"

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
