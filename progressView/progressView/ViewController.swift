
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize progress
        progressView.progress = 0.0
        progressLabel.text = "Progress: 0%"
    }

    @IBAction func increaseProgress(_ sender: UIButton) {

        // Increase progress by 25%
        if progressView.progress < 1.0 {
            progressView.progress += 0.25
        }

        // Update percentage label
        let percentage = Int(
            (progressView.progress * 100).rounded()
        )

        progressLabel.text = "Progress: \(percentage)%"

        // Show alert when progress reaches 100%
        if progressView.progress >= 1.0 {

            let alert = UIAlertController(
                title: "Congratulations!",
                message: "You have completed this activity.",
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
