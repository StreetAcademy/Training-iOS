//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

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

let communications: [Communication] = [.inInfoAcquisition, .displaying, .editing, .editingResultSending, .editingResultSendingComp]

final class FoodTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return communications.count
    }
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        
        // セルに表示されるもタイトルを編集（メインタイトル）
        cell.textLabel?.text = communications[indexPath.row].rawValue
        // セルに表示されるもタイトルを編集（サブタイトル）
        cell.detailTextLabel?.text = communications[indexPath.row].viewMessage

        return cell
    }
}

// Playgroundでの非同期処理を待つオプション
PlaygroundPage.current.needsIndefiniteExecution = true

// 画面の描画
let viewController = FoodTableViewController()
viewController.title = "テーブルです"
let navigationController = UINavigationController(rootViewController: viewController)
navigationController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)

//Live Viewに上記のViewを表示させる
PlaygroundPage.current.liveView = navigationController.view
