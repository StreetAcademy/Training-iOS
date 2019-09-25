//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

let array = ["test1", "test2"]

final class BeatlesTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return array.count
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
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
}

// Playgroundでの非同期処理を待つオプション
PlaygroundPage.current.needsIndefiniteExecution = true

let viewController = BeatlesTableViewController()
viewController.title = "I love Beatles."
let navigationController = UINavigationController(rootViewController: viewController)
navigationController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)

//Live Viewに上記のViewを表示させる
PlaygroundPage.current.liveView = navigationController.view

