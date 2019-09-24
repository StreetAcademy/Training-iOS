import UIKit

var str = "Hello, playground"

enum JR: String {
    case ebisu = "恵比寿"
    case shibuya = "渋谷"
    case ikebukuro = "池袋"
    case mejiro = "目白"
    case meguro = "目黒"
}

let station: JR = .ebisu

let stations: [JR] = [.ebisu, .shibuya, .ikebukuro]

stations.forEach { station in
    print(station.rawValue)
}
