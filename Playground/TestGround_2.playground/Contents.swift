import UIKit


enum TX: String {
    case akihabara = "秋葉原"
    case asakusa = "浅草"
    case ibaraki = "茨城"
}


let txStation: TX = .akihabara

let txStations: [TX] = [.akihabara, .asakusa, .ibaraki]
txStations.forEach { txStation in
    print(txStation.rawValue)
}
    

