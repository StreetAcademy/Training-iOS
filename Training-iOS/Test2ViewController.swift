//
//  Test2ViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/25.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class Test2ViewController: UIViewController {
    
    var text1: String = ""
    var text2: String = ""
    var text3: String = ""
    var text4: String = ""
    var text5: String = ""

    @IBOutlet weak var text1Label: UILabel!
    @IBOutlet weak var text2Label: UILabel!
    @IBOutlet weak var text3Label: UILabel!
    @IBOutlet weak var text4Label: UILabel!
    @IBOutlet weak var text5Label: UILabel!

    @IBAction func nextButton(_ sender: Any) {
        print("pushed")
        let storyboard = UIStoryboard(name: "Test3", bundle: nil)

        // 下からpushして画面遷移する
        if let viewController = storyboard.instantiateViewController(withIdentifier: "Test3ViewController") as? Test3ViewController {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        text1Label.text = text1
        text2Label.text = text2
        text3Label.text = text3
        text4Label.text = text4
        text5Label.text = text5
    }
}
