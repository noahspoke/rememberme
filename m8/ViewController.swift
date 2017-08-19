//
//  ViewController.swift
//  m8
//
//  Created by Noah Spochart on 8/8/17.
//  Copyright © 2017 Noah Spochart. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    var player: AVPlayer?
    let videoUrl: NSURL = Bundle.main.url(forResource: "people", withExtension: "mp4")! as NSURL
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setNeedsStatusBarAppearanceUpdate()
        
        signUpButton.backgroundColor = UIColor.clear
        signUpButton.layer.borderWidth = 2.0
        signUpButton.layer.borderColor = UIColor.white.cgColor
        
        loginButton.layer.borderWidth = 2.0
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.backgroundColor = loginButton.backgroundColor?.withAlphaComponent(0.6)
        
        player = AVPlayer(url: videoUrl as URL)
        player?.actionAtItemEnd = .none
        player?.isMuted = true
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.zPosition = -1
        playerLayer.frame = self.view.frame
        
        self.view.layer.addSublayer(playerLayer)
        
        player?.play()
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.player?.currentItem, queue: nil, using: { (_) in
            DispatchQueue.main.async {
                self.player?.seek(to: kCMTimeZero)
                self.player?.play()
            }
        })
        
    }
    
    func loopVideo() {
        NSLog("ended")
        player!.seek(to: kCMTimeZero)
        player?.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signUp(_ sender: Any) {
        self.performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
}

