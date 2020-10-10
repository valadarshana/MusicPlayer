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
    
    @IBOutlet weak var imgSong: UIImageView!
    
    @IBOutlet weak var lblSongName: UILabel!
    
    var audio = AVAudioPlayer()
    var isPlay = true
    var str:String?
    var img:UIImage?
    
    var objsong:MySongList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: objsong?.filename, ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        do {
            audio = try    AVAudioPlayer(contentsOf: url)
            imgSong.image=UIImage(named: (objsong?.img)!)
            lblSongName.text=objsong?.songName
            img = UIImage(named: "pause")
            btnplay.setImage(img, for: .normal)
            audio.play()
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

