import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer?
    let audioList = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(ofThisFileName: audioList[sender.tag - 1])
        
    }
    
    func playSound(ofThisFileName : String) {
        
        let url = Bundle.main.url(forResource: ofThisFileName, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        }
        catch {
            print(error)
        }
    }
  
}

