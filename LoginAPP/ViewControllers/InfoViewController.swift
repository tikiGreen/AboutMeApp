//
//  InfoViewController.swift
//  LoginAPP
//
//  Created by User on 13.02.2024.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var specialityLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView!
    
    var author: Author!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = author.fullName
        dateOfBirthLabel.text = author.dayOfBirth
        genderLabel.text = author.gender.rawValue
        cityLabel.text = author.city
        specialityLabel.text = author.speciality
        photoImageView.image = UIImage(named: author.photo)
    }
    
}
