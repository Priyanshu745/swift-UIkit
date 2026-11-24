import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = Bundle.main.path(
            forResource: "iphone",
            ofType: "mp3"
        ) {
            
            let url = URL(fileURLWithPath: path)

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
            } catch {
                print("Error playing audio: \(error)")
            }
        }
    }

    @IBAction func playButtonTapped(_ sender: UIButton) {
        audioPlayer?.play()
    }

    @IBAction func pauseButtonTapped(_ sender: UIButton) {
        audioPlayer?.pause()
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {
        audioPlayer?.stop()
        audioPlayer?.currentTime = 0
    }
}
