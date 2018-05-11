//
//  LoginViewController.swift
//  motovoy
//
//  Created by Erick Pac on 5/8/18.
//  Copyright © 2018 Nextdots. All rights reserved.
//

import UIKit
import Material

class RegistrationViewController: UIViewController {

    @IBOutlet weak var titleBarView: NavigationShadowedView!
    @IBOutlet weak var nameField: TextField!
    @IBOutlet weak var emailField: TextField!
    @IBOutlet weak var phoneField: TextField!
    @IBOutlet weak var passwordField: TextField!
    @IBOutlet weak var registerButton: FlatButton!
    @IBOutlet weak var loginButton: FlatButton!
    
}

extension RegistrationViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        loginButton.borderColor = MColor.blue
        loginButton.borderWidthPreset = .border4
        
        nameField.dividerActiveColor = UIColor.lightGray
        emailField.dividerActiveColor = UIColor.lightGray
        phoneField.dividerActiveColor = UIColor.lightGray
        passwordField.dividerActiveColor = UIColor.lightGray
    }
    
}

extension RegistrationViewController {
    
    @IBAction func openMain() {
        performSegue(withIdentifier: "Main", sender: nil)
    }
    
}
