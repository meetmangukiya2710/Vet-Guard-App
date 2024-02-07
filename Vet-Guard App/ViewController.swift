//
//  ViewController.swift
//  Vet-Guard App
//
//  Created by R95 on 06/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var camondoImage: UIImageView!
    
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        camondoImage.layer.cornerRadius = 35
        design()
    }
    
    func design() {
        getStartedButton.layer.cornerRadius = 20
        getStartedButton.layer.shadowColor = UIColor.white.cgColor
        getStartedButton.layer.shadowOpacity = 0.5
        getStartedButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        getStartedButton.layer.shadowRadius = 5.0
        getStartedButton.layer.masksToBounds = false
        getStartedButton.te
        
        /*
         viewLayer.layer.cornerRadius = 15
         viewLayer.layer.shadowOpacity = 0.5
         viewLayer.layer.shadowOffset = CGSize(width: 0, height: -3)
         viewLayer.layer.shadowColor = mycolor.cgColor
         viewLayer.layer.shadowRadius = 5.0
         viewLayer.layer.masksToBounds = false
         */
        
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        
        let naviagte = storyboard?.instantiateViewController(identifier: "WelcomeLoginPageViewController") as! WelcomeLoginPageViewController
        
        navigationController?.pushViewController(naviagte, animated: true)
        
    }
    
}

