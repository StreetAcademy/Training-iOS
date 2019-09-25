//
//  Test2ViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/25.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class Test2ViewController: UIViewController {

    @IBAction func nextButton(_ sender: Any) {
        print("pushed")
        
        // ストーリーボードを定義する
        let storyboard = UIStoryboard(name: "Test1", bundle: nil)
        
        // 横からpushして画面遷移する
        if let viewController = storyboard.instantiateViewController(withIdentifier: "TestViewController") as? TestViewController {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
