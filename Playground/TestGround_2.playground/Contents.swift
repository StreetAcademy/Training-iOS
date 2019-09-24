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
    

