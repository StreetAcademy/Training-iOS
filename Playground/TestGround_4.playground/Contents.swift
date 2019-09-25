import UIKit

//- まずenumで[情報取得中,表示中,編集中,編集結果を送信中,編集結果送信完了]のパターンを作る
// - 配列の変数を、[情報取得中,表示中,編集中,編集結果を送信中,編集結果送信完了]の順番で作る
// - つくった配列をforEachで回し、以下をprintで表示するようにする
// - 情報取得中: 「ロード中」
//- 表示中: 特になし
//- 編集中: 「編集中」
//- 編集結果を送信中: 「送信中」
//- 編集結果送信完了: 「完了しました！」

// enumで送信情報等を列挙する
enum Communication: String {
    case inInfoAcquisition = "情報取得中"
    case displaying = "表示中"
    case editing = "編集中"
    case editingResultSending = "編集結果を送信中"
    case editingResultSendingComp = "編集結果送信完了"
    
    // enumで個別に付随する値を持つ
    var viewMessage: String {
        switch self {
        case .inInfoAcquisition:
            return "ロード中"
        case .displaying:
            return ""
        case .editing:
            return "編集中"
        case .editingResultSending:
            return "送信中"
        case .editingResultSendingComp:
            return "送信完了"
        }
    }
}

// 配列にenumの情報を格納
let communications: [Communication] = [.inInfoAcquisition, .displaying, .editing, .editingResultSending, .editingResultSendingComp]

// 配列の中身をfor文で出力
communications.forEach {
    communication in
    print("\(communication.rawValue): \(communication.viewMessage)")
}
