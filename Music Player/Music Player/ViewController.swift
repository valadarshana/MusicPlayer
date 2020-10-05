//
//  ViewController.swift
//  Music Player
//
//  Created by Vijay Parmar on 04/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var btnplay: UIButton!
    var audio = AVAudioPlayer()
    var isPlay = false
    var str:String?
    var img:UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "ganesha", ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        do {
             audio = try    AVAudioPlayer(contentsOf: url)
        } catch  {
            print("path not found")
            
        }
    }

    @IBAction func btn_click(_ sender: Any) {
        
        if isPlay
        {
            img = UIImage(named: "play")
            audio.pause()
            
        }
        else{
             img = UIImage(named: "pause")
                audio.play()
        }
        btnplay.setImage(img, for: .normal)
        isPlay = !isPlay
        
        
        print(isPlay)
    }
    
}

