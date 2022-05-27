//
//  DefendInfoVC.swift
//  R6S Operators Info
//
//  Created by Илья Терновской on 26.05.2022.
//

import UIKit

class DefendInfoVC: UIViewController {
    
    @IBOutlet weak var imageDefend: UIImageView!
    @IBOutlet weak var personalInfoDefend: UILabel!
    @IBOutlet weak var healthLevelDefend: UILabel!
    @IBOutlet weak var speedLevelDefend: UILabel!
    @IBOutlet weak var biographyDefend: UILabel!
    @IBOutlet weak var birthdayDefend: UILabel!
    @IBOutlet weak var birthplaceDefend: UILabel!
    
    var defendInfo: Defend!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background5")
        self.view.insertSubview(backgroundImage, at: 0)
        
        imageDefend.image = UIImage(named: defendInfo.imageFull)
        birthdayDefend.text = defendInfo.birthday
        birthplaceDefend.text = defendInfo.birthplace
        personalInfoDefend.text = "\(defendInfo.fullName)"
        healthLevelDefend.text = defendInfo.health
        speedLevelDefend.text = defendInfo.speed
        biographyDefend.text = defendInfo.bio


    }
    

}
