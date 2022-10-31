//
//  ViewController.swift
//  UITestSample
//
//  Created by Hansub Yoo on 2022/10/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var repeatTF: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func tapSignupButton(_ sender: Any) {
        if passwordTF.text != repeatTF.text {
            let alert = UIAlertController(title: "Error", message: "비밀번호와 확인 비밀번호가 다릅니다.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            DispatchQueue.main.async {
                alert.view.accessibilityIdentifier = "errorAlertDialog"
                self.present(alert, animated: true, completion: nil)
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

