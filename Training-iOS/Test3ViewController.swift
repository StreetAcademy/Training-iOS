//
//  Test3ViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/26.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class Test3ViewController: UIViewController {
    
    @IBAction func test3Button(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Test1", bundle: nil)
        
        // 下からpushして画面遷移する
        if let viewController = storyboard.instantiateViewController(withIdentifier: "TestViewController") as? TestViewController {
            let navigationController = UINavigationController(rootViewController: viewController)
            self.present(navigationController, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
