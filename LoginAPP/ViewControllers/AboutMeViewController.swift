//
//  AboutMeViewController.swift
//  LoginAPP
//
//  Created by User on 13.02.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var aboutMeLabel: UILabel!
    
    var author: Author!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = author.fullName
        aboutMeLabel.text = author.description
    }
    
}
