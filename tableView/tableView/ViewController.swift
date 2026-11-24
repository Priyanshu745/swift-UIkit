//
//  ViewController.swift
//  tableView
//
//  Created by Priyanshu Parashar on 16/11/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell" , for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(systemName: "person.circle")
        content.text = students[indexPath.row].0
        content.secondaryText = "Roll No: \(students[indexPath.row].1)"
        
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        return "Students"
    }
    func tableView(_ tableView: UITableView,
                   titleForFooterInSection section: Int) -> String? {
        return "Total Students: \(students.count)"
    }

    @IBOutlet weak var tableView: UITableView!
    
    
    
    let students  = [
        ("Arjun","101"),
        ("Arju","102"),
        ("Arjn","103"),
        ("Arun","104"),
        ("Aun","105"),
        ("An","106"),
        ("Arjun","101"),
        ("Arju","102"),
        ("Arjn","103"),
        ("Arun","104"),
        ("Aun","105"),
        ("An","106"),
        ("A","107")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
     
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let student = students[indexPath.row]

            let alert = UIAlertController(
                title: "Student Details",
                message: "Do you want to view \(student.0)'s details?",
                preferredStyle: .alert
            )

          
            alert.addAction(UIAlertAction(title: "Yes", style: .default) { _ in
                
                self.performSegue(
                    withIdentifier: "showStudent",
                    sender: student
                )
                
            })

           
            alert.addAction(UIAlertAction(title: "No", style: .destructive))

            present(alert, animated: true)

            tableView.deselectRow(at: indexPath, animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showStudent" {

            let secondVC = segue.destination as! SecondVC

            let student = sender as! (String, String)

            secondVC.studentName = student.0
            secondVC.studentRoll = student.1
        }
    }
}

