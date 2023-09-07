//
//  ViewController.swift
//  LoginScreen
//
//  Created by Yago de Moura Silva on 06/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    var screenView = LoginScreen()
    
    override func loadView() {
            self.screenView = LoginScreen()
            self.view = self.screenView
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }


}

