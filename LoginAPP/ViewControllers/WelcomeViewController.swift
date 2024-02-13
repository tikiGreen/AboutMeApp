//
//  WelcomeViewController.swift
//  LoginAPP
//
//  Created by User on 11.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user?.userName ?? "")!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        tabBarVC?.viewControllers?.forEach { viewController in
            if let infoVC = viewController as? InfoViewController {
                infoVC.author = user.author
            } else if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.author = user.author
            }
        }
    }
    
}


