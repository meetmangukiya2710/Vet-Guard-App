//
//  WelcomeLoginPageViewController.swift
//  Vet-Guard App
//
//  Created by R95 on 06/02/24.
//

import UIKit

class WelcomeLoginPageViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        let nagate = storyboard?.instantiateViewController(identifier: "SignUpButtonViewController") as! SignUpButtonViewController
        
        navigationController?.pushViewController(nagate, animated: true)
        
    }
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        if emailTextField.text == "" && passwordTextField.text == "" {
            Alert(title: "Error!", message: "Enter the All Details...")
        }
        else if emailTextField.text == "" {
            Alert(title: "Error!", message: "Enter the Email...")
        }
        else if passwordTextField.text == "" {
            Alert(title: "Error!", message: "Enter the Password...")
        }
        else{
            let naviagte1 = storyboard?.instantiateViewController(identifier: "successViewController") as! successViewController
            
            navigationController?.pushViewController(naviagte1, animated: true)
        }
    }
    
    func Alert(title: String, message: String) {
        let a = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        a.addAction(UIAlertAction(title: "Ok", style: .default))
        a.addAction(UIAlertAction(title: "Cansel", style: .destructive))
        
        present(a, animated: true)
    }
    
}
