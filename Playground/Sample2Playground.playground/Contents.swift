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




enum TX {
    case akihabara
    case asakusa
    case ibaraki
}


let txStation: TX = .akihabara

let txStations: [TX] = [.akihabara, .asakusa, .ibaraki]

txStations.forEach { txStation in
    switch txStation {
    case .akihabara:
        print("秋葉原")
    case .asakusa:
        print("浅草")
    case .ibaraki:
        print("茨城")
    }
    
}


