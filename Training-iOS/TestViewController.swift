//
//  TestViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/25.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var sampleTextField: UITextField!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func clickButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Test2", bundle: nil)
        if let viewController =
            storyboard.instantiateViewController(withIdentifier: "Test2ViewController") as? Test2ViewController {
            guard let text = sampleTextField.text else {
                return
            }
            viewController.text = text
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    // Test1に戻る
    @IBAction func backButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Test3", bundle: nil)
        if storyboard.instantiateViewController(withIdentifier: "Test3ViewController") is Test3ViewController {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    // https://paranishian.hateblo.jp/entry/objc/detect-viewcontroller-modal-or-push
    override func viewDidLoad() {
        super.viewDidLoad()
        if presentingViewController == nil {
            backButton.isHidden = true
        } else {
            backButton.isHidden = false
        }
    }
}
