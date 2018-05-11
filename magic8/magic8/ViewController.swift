//
//  ViewController.swift
//  magic8
//
//  Created by Elan Qisthi on 11/05/18.
//  Copyright © 2018 Elan Qisthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    let ballData: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askBall()
    }
    
    func askBall() {
        let randNumber = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballData[randNumber])
    }



}

