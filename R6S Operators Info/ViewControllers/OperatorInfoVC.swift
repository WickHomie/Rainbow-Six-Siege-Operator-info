//
//  OperatorInfoVC.swift
//  R6S Operators Info
//
//  Created by Илья Терновской on 18.05.2022.
//

import UIKit

class OperatorInfoVC: UIViewController {
    
    @IBOutlet weak var imageOperator: UIImageView!
    @IBOutlet weak var personalInfoOperator: UILabel!
    @IBOutlet weak var healthLevel: UILabel!
    @IBOutlet weak var speedLevel: UILabel!
    @IBOutlet weak var biographyOperator: UILabel!
    @IBOutlet weak var birthdayOperator: UILabel!
    @IBOutlet weak var birthplaceOperator: UILabel!
    
    var attackInfo: Attack!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background5")
        self.view.insertSubview(backgroundImage, at: 0)
        
        imageOperator.image = UIImage(named: attackInfo.imageFull)
        birthdayOperator.text = attackInfo.birthday
        birthplaceOperator.text = attackInfo.birthplace
        personalInfoOperator.text = "\(attackInfo.fullName)"
        healthLevel.text = attackInfo.health
        speedLevel.text = attackInfo.speed
        biographyOperator.text = attackInfo.bio


    }
    
}
