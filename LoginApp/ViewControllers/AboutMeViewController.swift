//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Назар Ткаченко on 13.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var iLikeItLabel: UILabel!
    
     var userName = ""
     var userSurname = ""
     var userAge = 0
     var iLikeIt = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: " + userName
        surNameLabel.text = "Surname: " + userSurname
        ageLabel.text = "Age: " + String(userAge)
        iLikeItLabel.text = "Like: " + iLikeIt
        title = userName + " " + userSurname

    }
    



}
