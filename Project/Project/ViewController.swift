//
//  ViewController.swift
//  Project
//
//  Created by Priyanshu Parashar on 25/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        passWord.placeholder = "Enter Your Password"
        passWord.autocapitalizationType = .none
        passWord.isSecureTextEntry = true
        
        
        userName.placeholder = "Enter Your Username "
        userName.autocapitalizationType = .none
        
        
        
        
        
        
        
    }

    @IBAction func loginButton(_ sender: UIButton) {
        
        if userName.text == "priyanshu" && passWord.text == "priyanshu"{
            performSegue(withIdentifier: "tologin", sender: nil)
        }else {
            let alert = UIAlertController(
                title: "Login Failed",
                message: "Enter Valid Username and Password",
                preferredStyle: .alert
                
            )
            

            let okAction = UIAlertAction(
                title: "OK",
                style: .default
            )

            alert.addAction(okAction)
            present(alert, animated: true)
        }
        
        
        
        
        
    }
    
}

