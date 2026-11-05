//
//  afterLogin.swift
//  Project
//
//  Created by Priyanshu Parashar on 25/10/26.
//

import UIKit

class afterLogin: UIViewController {

    @IBOutlet weak var loginText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginText.text = "Login Successfully "
        loginText.textColor = .red
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        navigationItem.hidesBackButton = true
    }
    

    @IBAction func logoutButton(_ sender: UIButton) {
        
        
        navigationController?.popToRootViewController(animated: true)
    }
    
}
