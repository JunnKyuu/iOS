//
//  LoginViewController.swift
//  LoginSampleApp
//
//  Created by JunKyu Lee on 12/28/23.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var emailLoginButton: UIButton!
    @IBOutlet var googleLoginButton: UIButton!
    @IBOutlet var appleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [emailLoginButton, googleLoginButton, appleLoginButton].forEach {
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.layer.cornerRadius = 30
        }
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Navigation Bar 숨기기
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func emailLoginButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func googleLoginButtonTapped(_ sender: UIButton) {
        // fireBase 인증
    }

    @IBAction func appleLoginButtonTapped(_ sender: UIButton) {
        // fireBase 인증
    }
}
