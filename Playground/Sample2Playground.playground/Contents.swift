import UIKit

var str = "Hello, playground"

enum JR {
    case ebisu
    case shibuya
    case ikebukuro
    case mejiro
    case meguro
}

let station: JR = .ebisu

let stations: [JR] = [.ebisu, .shibuya, .ikebukuro]

stations.forEach { station in
    switch station {
    case .ebisu:
        print("恵比寿")
    case .shibuya:
        print("渋谷")
    case .ikebukuro:
        print("池袋")
    case .mejiro:
        print("目白")
    case .meguro:
        print("目黒")
    }
}
