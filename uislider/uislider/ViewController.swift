import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var volumeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        volumeSlider.minimumValue = 0
        volumeSlider.maximumValue = 100
        volumeSlider.value = 50
        
        volumeLabel.text = "Volume: 50"
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let value = Int(sender.value)
        volumeLabel.text = "Volume: \(value)"
    }
}
