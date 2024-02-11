//
//  WelcomeViewController.swift
//  LoginAPP
//
//  Created by User on 11.02.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")!"


    }
}
