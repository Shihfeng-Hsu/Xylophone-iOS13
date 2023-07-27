//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

//import UIKit
//import AVFoundation
//var audioPlayer: AVAudioPlayer?
//
//class ViewController: UIViewController {
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    @IBAction func keyPressed(_ sender: UIButton) {
//        //Get the button title.
//        let soundTitle = sender.title(for: .normal)
//
//        playSound(resource:soundTitle!)
//
//
//    }
//
//
//    //player function and switcher
//    func playSound(resource: String){
//
//        //The Sounds folder in the XCODE is NOT a folder, it's a group.
//        //so all the sound files are in the main folder.
//        guard let url = Bundle.main.url(forResource: resource, withExtension: "wav")else{return}
//
//        do{
//            try AVAudioSession.sharedInstance().setCategory(.playback,mode:.default)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
//
//            guard let player = audioPlayer else {return}
//
//            player.play()
//
//        }catch let error {
//            print(error.localizedDescription)
//        }
//
//    }
//
//}


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(resource:sender.title(for: .normal)!)
    }
    
    func playSound(resource:String) {
        let url = Bundle.main.url(forResource: resource, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
