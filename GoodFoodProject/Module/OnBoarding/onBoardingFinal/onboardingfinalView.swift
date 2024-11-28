//
//  onboardingfinalView.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation
import UIKit

class onboardingfinalViewController: UIViewController {
    
    @IBOutlet weak var loginButton: buttonOnlyOutlineColor!
    @IBOutlet weak var registerButton: buttonWithFillColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _setupLoginButton()
        _setupRegisterButton()
    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
    }
    
    private func _setupLoginButton() {
        loginButton.borderWidth = 2.0
        loginButton.borderColor = .white
        loginButton.borderRadius = 8.0
    }
    
    private func _setupRegisterButton() {
        registerButton.buttonColor = UIColor(hex: "#FFB627")
        registerButton.layer.cornerRadius = 8.0
    }
}

extension onboardingfinalViewController: onboardingfinalViewProtocol {
    
}
