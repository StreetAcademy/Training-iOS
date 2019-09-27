//
//  TestViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/25.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var backButton: UIButton!

    @IBAction func clickButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Test2", bundle: nil)
        if let viewController =
            storyboard.instantiateViewController(withIdentifier: "Test2ViewController") as? Test2ViewController {
            viewController.text1 = nameTextField.text ?? "no input"
            viewController.text2 = addressTextField.text ?? "no input"
            viewController.text3 = genderTextField.text ?? "no input"
            viewController.text4 = ageTextField.text ?? "no input"
            viewController.text5 = birthdayTextField.text ?? "no input"
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
