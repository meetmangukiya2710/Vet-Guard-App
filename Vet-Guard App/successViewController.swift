//
//  successViewController.swift
//  Vet-Guard App
//
//  Created by R95 on 07/02/24.
//

import UIKit

class successViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    
    @IBAction func closeButton(_ sender: Any) {
        let naviagte1 = storyboard?.instantiateViewController(identifier: "HomePageViewController") as! HomePageViewController
        
        navigationController?.pushViewController(naviagte1, animated: true)
    }
    
}
