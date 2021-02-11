//
//  ViewController.swift
//  AudioExample
//
//  Created by user177273 on 2/11/21.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let song =
             "https://www.youtube.com/watch?v=Btpb2Bdgxmw&ab_channel=Feardog"
        
        play()
    }
    
    func play(){
        
        do {
            let song = Bundle.main.path(forResource: "doggy", ofType: "mp3")
            let url = NSURL(string: song!)
            var player = try AVAudioPlayer(contentsOf: url! as URL)
            player.delegate = self
            player.prepareToPlay()
            player.volume = 1.0
            player.play()
            if ((player.isPlaying)){
                self.view.backgroundColor = UIColor.green
            }
            
        } catch let error as NSError {
            print(error.localizedDescription)
        } catch {
            print("AVAudioPlayer init failed")
        }
        
        
    }


}

