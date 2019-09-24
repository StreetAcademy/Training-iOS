import UIKit


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

