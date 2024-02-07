//
//  SignUpButtonViewController.swift
//  Vet-Guard App
//
//  Created by R95 on 06/02/24.
//

import UIKit

class SignUpButtonViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var conPasswordTextField: UITextField!
    
    @IBOutlet weak var mobilNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    
    @IBAction func signUpButtonAction(_ sender: Any) {
        if userNameTextField.text == "" && emailTextField.text == "" && passwordTextField.text == "" && conPasswordTextField.text == "" && mobilNumberTextField.text == "" {
            alert(title: "Error!", message: "Enter the All Detail")
        }
        else if userNameTextField.text == "" {
            alert(title: "Error!", message: "Enter the All Detail")
        }
        else if emailTextField.text == "" {
            alert(title: "Error!", message: "Enter the All Detail")
        }
        else if passwordTextField.text == "" {
            alert(title: "Error!", message: "Enter the All Detail")
        }
        else if conPasswordTextField.text == "" {
            alert(title: "Error!", message: "Enter the All Detail")
        }
        else if mobilNumberTextField.text == "" {
            alert(title: "Error!", message: "Enter the All Detail")
        }
        else {
            let navigate = storyboard?.instantiateViewController(identifier: "LoginPageViewController") as! LoginPageViewController
            
            navigationController?.pushViewController(navigate, animated: true)
        }
    }
    
    func alert(title: String,message: String) {
        let a = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        a.addAction(UIAlertAction(title: "Ok", style: .default))
        a.addAction(UIAlertAction(title: "Cansel", style: .destructive))
        
        present(a, animated: true)
    }
}
