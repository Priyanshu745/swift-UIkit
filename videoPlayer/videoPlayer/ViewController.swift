import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func playVideoButtonTapped(_ sender: UIButton) {

        if let path = Bundle.main.path(
            forResource: "video",
            ofType: "mp4"
        ) {

            let url = URL(fileURLWithPath: path)

            let player = AVPlayer(url: url)

            let playerViewController = AVPlayerViewController()

            playerViewController.player = player

            present(playerViewController, animated: true) {
                player.play()
            }
        }
    }
}
