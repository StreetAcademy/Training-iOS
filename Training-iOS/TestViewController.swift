//
//  TestViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/25.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBAction func clickButton(_ sender: Any) {
        // ストーリーボードを定義する
        let storyboard = UIStoryboard(name: "Test2", bundle: nil)
        
        // 下からpushして画面遷移する
        if let viewController = storyboard.instantiateViewController(withIdentifier: "Test2ViewController") as? Test2ViewController {
            let navigationController = UINavigationController(rootViewController: viewController)
            self.present(navigationController, animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
