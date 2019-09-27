//
//  TestViewController.swift
//  Training-iOS
//
//  Created by Shouta Tarukawa on 2019/09/25.
//  Copyright © 2019 yusaku maki. All rights reserved.
//

import UIKit

struct Profile {
    let name: String
    let address: String
    let gender: String
    let age: String
    let birthday: String

    init(name: String, address: String, gender: String, age: String, birthday: String) {
        self.name = name
        self.address = address
        self.gender = gender
        self.age = age
        self.birthday = birthday
    }
}


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
            let profile: Profile = Profile(name: nameTextField.text ?? "no input",
                                           address: addressTextField.text ?? "no input",
                                           gender: genderTextField.text ?? "no input",
                                           age: ageTextField.text ?? "no input",
                                           birthday: birthdayTextField.text ?? "no input")
            viewController.profile = profile
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
