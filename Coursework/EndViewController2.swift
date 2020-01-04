//
//  EndViewController2.swift
//  Coursework
//
//  Created by Jason Hitching on 04/01/2020.
//  Copyright © 2020 Jason Hitching. All rights reserved.
//

import UIKit

class EndViewController2: UIViewController {

    let W = UIScreen.main.bounds.width
    let H = UIScreen.main.bounds.height
    
    @IBOutlet var replayButton2: UIButton!
    @IBOutlet var homeButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // backgroundSetup()
        setupReplayButton()
        setupHomeButton()
        gameOverImg()
        
    }
    
    // Setup background image
//    func backgroundSetup() {
//        let bgView = UIImageView(image: nil)
//        bgView.image = UIImage(named: "bg2.png")
//        bgView.frame = UIScreen.main.bounds
//        self.view.addSubview(bgView)
//    }
    
    // Initialise replay button
    func setupReplayButton() {
        self.view.bringSubviewToFront(replayButton2)
        replayButton2.frame = CGRect(x:W/2.5, y:H/1.35, width: 50, height: 50)
    }
    
    func setupHomeButton() {
        self.view.bringSubviewToFront(homeButton2)
        homeButton2.frame = CGRect(x:W/1.92, y:H/1.35, width: 50, height: 50)
    }
    
    // Game over image
    func gameOverImg() {
        let gameOver = UIImageView(image: UIImage(named: "gameOver.png"))
        gameOver.frame = CGRect(x:W/2.9, y:H/100, width: 200, height: 180)
        self.view.addSubview(gameOver)
        self.view.bringSubviewToFront(gameOver)
    }
    
}