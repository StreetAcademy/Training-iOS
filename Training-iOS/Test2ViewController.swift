//
//  Test2ViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/25.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class Test2ViewController: UIViewController {
    
    var text: String = ""
    
    @IBOutlet weak var textUILable: UILabel!
    
    
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
        textUILable.text = text
    }
}
