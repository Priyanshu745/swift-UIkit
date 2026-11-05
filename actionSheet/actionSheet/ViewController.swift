
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var actionSelected: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showActionSheet(_ sender: UIButton) {

        // Create the action sheet
        let actionSheet = UIAlertController(
            title: "Choose an Option",
            message: "What would you like to do?",
            preferredStyle: .actionSheet
        )

        // First option
        let cameraAction = UIAlertAction(
            title: "Camera",
            style: .default
        ) { _ in
            self.actionSelected.text = "Camera Selected"
        }

        // Second option
        let galleryAction = UIAlertAction(
            title: "Gallery",
            style: .default
        ) { _ in
            self.actionSelected.text =    "Gallery selected"
        }

        // Third option
        let deleteAction = UIAlertAction(
            title: "Delete",
            style: .destructive
        ) { _ in
            self.actionSelected.text =  "Delete selected"
        }

        // Cancel option
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: .cancel
        )

        // Add options to the action sheet
        actionSheet.addAction(cameraAction)
        actionSheet.addAction(galleryAction)
        actionSheet.addAction(deleteAction)
        actionSheet.addAction(cancelAction)

        // Display the action sheet
        present(actionSheet, animated: true)
    }
}

