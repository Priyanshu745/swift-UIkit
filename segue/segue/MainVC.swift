//
//  MainVC.swift
//  segue
//
//  Created by Priyanshu Parashar on 11/10/26.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func blueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toBlue", sender: nil)
        
        
    }
    
    @IBAction func brownButton(_ sender: UIButton) {
        
        
        performSegue(withIdentifier: "toBrown", sender: nil)
    }
}
