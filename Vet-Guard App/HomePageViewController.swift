//
//  HomePageViewController.swift
//  Vet-Guard App
//
//  Created by R95 on 07/02/24.
//

import UIKit

class HomePageViewController: UIViewController {
    
    
    @IBOutlet weak var viewLayer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        design()
    }
    
    func design() {
        let mycolor: UIColor = .white
        
        viewLayer.layer.cornerRadius = 15
        viewLayer.layer.shadowOpacity = 0.5
        viewLayer.layer.shadowOffset = CGSize(width: 0, height: -3)
        viewLayer.layer.shadowColor = mycolor.cgColor
        viewLayer.layer.shadowRadius = 5.0
        viewLayer.layer.masksToBounds = false
    }

}
