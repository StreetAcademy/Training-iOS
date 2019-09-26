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
        
        if let viewController = storyboard.instantiateViewController(withIdentifier: "Test2ViewController") as? Test2ViewController {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Test3", bundle: nil)
        if storyboard.instantiateViewController(withIdentifier: "Test3ViewController") is Test3ViewController {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
