//
//  LoginViewController.swift
//  motovoy
//
//  Created by Erick Pac on 5/8/18.
//  Copyright © 2018 Nextdots. All rights reserved.
//

import UIKit
import Material

class LoginViewController: UIViewController {

    @IBOutlet weak var titleBarView: UIView!
    @IBOutlet weak var userField: TextField!
    @IBOutlet weak var passwordField: TextField!
    @IBOutlet weak var registerButton: FlatButton!
    @IBOutlet weak var loginButton: FlatButton!
    
}

extension LoginViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        titleBarView.layer.shadowColor = UIColor.black.cgColor
        titleBarView.layer.shadowOffset = CGSize(width: 0, height: 4)
        titleBarView.layer.shadowRadius = 10
        titleBarView.layer.shadowOpacity = 0.1
        
        registerButton.borderColor = MColor.blue
        registerButton.borderWidthPreset = .border4
        
        userField.dividerActiveColor = UIColor.lightGray
        passwordField.dividerActiveColor = UIColor.lightGray
    }
    
}
