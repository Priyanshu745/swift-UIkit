//
//  ViewController.swift
//  segmentcontrol
//
//  Created by Priyanshu Parashar on 21/10/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var colorSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.backgroundColor = .white
    }

    @IBAction func colorChanged(_ sender: UISegmentedControl) {
           
           if sender.selectedSegmentIndex == 0 {
               textField.backgroundColor = .black
           } else if sender.selectedSegmentIndex == 1 {
               textField.backgroundColor = .brown
           } else {
               textField.backgroundColor = .red
           }
       }
}

