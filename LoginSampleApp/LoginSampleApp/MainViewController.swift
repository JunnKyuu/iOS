//
//  MainViewController.swift
//  LoginSampleApp
//
//  Created by JunKyu Lee on 12/28/23.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MainView로 왔을 때 뒤로가기하면 어색하므로 막아둠
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        logoutButton.layer.cornerRadius = 30
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Navigation Bar 숨기기
        navigationController?.navigationBar.isHidden = true
    }
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        // 버튼 클릭하면 첫 화면으로 넘어가기
        self.navigationController?.popToRootViewController(animated: true)
    }
}
