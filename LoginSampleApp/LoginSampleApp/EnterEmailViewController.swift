//
//  EnterEmailViewController.swift
//  LoginSampleApp
//
//  Created by JunKyu Lee on 12/28/23.
//

import UIKit
import FirebaseAuth

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
        // fireBase 이메일/비밀번호 인증
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        // 신규 사용자 생성
        Auth.auth().createUser(withEmail:  email, password:  password) { [weak self] authResult, error in
            guard let self = self else { return }
            
            self.showMainViewController()
        }
    }
    
    private func showMainViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        mainViewController.modalPresentationStyle = .fullScreen
        navigationController?.show(mainViewController, sender:  nil)
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
