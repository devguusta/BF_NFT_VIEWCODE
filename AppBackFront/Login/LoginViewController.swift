//
//  ViewController.swift
//  AppBackFront
//
//  Created by Premiersoft on 17/07/23.
//

import UIKit

class LoginViewController: UIViewController {
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen( )
        view = loginScreen
    }


    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

  
}

