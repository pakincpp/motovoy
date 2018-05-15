//
//  MainNavigationTabViewController.swift
//  motovoy
//
//  Created by Jose Quintero on 5/15/18.
//  Copyright © 2018 Nextdots. All rights reserved.
//

import UIKit

protocol BaseNavigationControllerDelegate {
    var isReady: Bool { get set }
    func setReady()
}

class BaseNavigationViewController: UIViewController, BaseNavigationControllerDelegate {
    
    var isReady: Bool = false
    
    func setReady() {
        self.isReady = true
        super.loadView()
    }
    
    override func loadView() {
        isReady = Utils.getLoggedUser() != nil
        if (isReady) {
            super.loadView()
        }
    }
    
}

class MainNavigationTabViewController: UITabBarController {

    var ready: Bool = false
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Utils.getLoggedUser() == nil {
            performSegue(withIdentifier: "RegistrationSegue", sender: nil)
        }else {
            configureControllers()
            super.viewDidAppear(animated)
        }
    }
    
    func configureControllers() {
        for view in self.viewControllers ?? [] {
            guard let v = view as? BaseNavigationViewController else {
                return
            }
            v.setReady()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? UINavigationController, let rootController = viewController.topViewController as? WelcomeViewController {
            rootController.onLogin = { (controller: UIViewController) in
                controller.dismiss(animated: true, completion: {
                    self.configureControllers()
                })
            }
        }
    }
    
}