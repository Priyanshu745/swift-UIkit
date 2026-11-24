//
//  SecondVC.swift
//  tableView
//
//  Created by Priyanshu Parashar on 22/11/26.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = "Name: \(studentName)"
        rollLabel.text = "Roll No: \(studentRoll)"
    }
    


        @IBOutlet weak var nameLabel: UILabel!
        @IBOutlet weak var rollLabel: UILabel!

        var studentName = ""
        var studentRoll = ""

        
    }


