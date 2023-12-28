//
//  EnterEmailViewController.swift
//  LoginSampleApp
//
//  Created by JunKyu Lee on 12/28/23.
//

import UIKit

class EnterEmailViewController: UIViewController {
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var errorMessageLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // nextButton radius, 버튼 비활성화
        nextButton.layer.cornerRadius = 30
        nextButton.isEnabled = false
        
        // 입력받기 위해 delegate 설정
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // 첫 커서가 emailTextField에 설정
        emailTextField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Navigation Bar 보이기
        navigationController?.navigationBar.isHidden = false
        
        // Navigation Bar textColor 설정
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        // fireBase 인증
    }
}

extension EnterEmailViewController: UITextFieldDelegate {
    // 입력하면 커서가 자동으로 내려가게
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    // nextButton 활성화
    func textFieldDidEndEditing(_ textField: UITextField) {
        let isEmailEmpty = emailTextField.text == ""
        let isPasswordEmpty = passwordTextField.text == ""
        
        nextButton.isEnabled = !isEmailEmpty && isPasswordEmpty
    }
}
