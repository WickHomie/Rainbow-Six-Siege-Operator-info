//
//  ViewController.swift
//  R6S Operators Info
//
//  Created by Илья Терновской on 11.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var attackButton: UIButton!
    @IBOutlet var defendButton: UIButton!
    
    private let topColorAttack = UIColor(displayP3Red: 100, green: 70 / 100, blue: 0, alpha: 0.9)
    private let bottomColorAttack = UIColor(displayP3Red: 100, green: 40 / 100, blue: 0, alpha: 0.5)
    private let topColorDefend = UIColor(displayP3Red: 0, green: 40 / 100, blue: 100, alpha: 0.9)
    private let bottomColorDefend = UIColor(displayP3Red: 0, green: 80 / 100, blue: 100, alpha: 0.5)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background4")
        self.view.insertSubview(backgroundImage, at: 0)
        
        attackButton.addGradientColor(topColor: topColorAttack, bottomColor: bottomColorAttack)
        defendButton.addGradientColor(topColor: topColorDefend, bottomColor: bottomColorDefend)
        
        attackButton.titleLabel?.shadowColor = .white
        attackButton.titleLabel?.layer.shadowRadius = 7
        attackButton.titleLabel?.layer.shadowOpacity = 0.5
        attackButton.titleLabel?.layer.shadowOffset = CGSize(width: 2.5, height: 2.5)
        
        defendButton.titleLabel?.shadowColor = .white
        defendButton.titleLabel?.layer.shadowRadius = 7
        defendButton.titleLabel?.layer.shadowOpacity = 0.5
        defendButton.titleLabel?.layer.shadowOffset = CGSize(width: 2, height: 2.5)
        
        attackButton.layer.shadowColor = UIColor.black.cgColor
        attackButton.layer.shadowRadius = 10
        attackButton.layer.shadowOpacity = 1
        attackButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        defendButton.layer.shadowColor = UIColor.black.cgColor
        defendButton.layer.shadowRadius = 10
        defendButton.layer.shadowOpacity = 1
        defendButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        
        
    }
    
    @IBAction func attackButtonPressed(_ sender: UIButton) {
       
    }
    
    @IBAction func defendButtonPressed(_ sender: UIButton) {

    }
    
    
}


