//
//  ViewController.swift
//  HeartAnimation
//
//  Created by Orin Baron on 5/23/18.
//  Copyright © 2018 Oreen Baron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var pulseUIVew: UIView!
    var heartBeating = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func heartPressed(_ sender: UIButton) {
        
        heartBeating = !heartBeating
        
            pulsate()

    }
    
    func pulsate() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.duration = 1.5
        pulse.fromValue = 0.95
        pulse.toValue = 1.2
        pulse.autoreverses = true
        pulse.repeatCount = .greatestFiniteMagnitude
        pulse.initialVelocity = 0.95
        pulse.damping = 1.0
        
        if !heartBeating {
            
            self.heartButton.layer.add(pulse, forKey: "pulse")
            
        } else if heartBeating {
            
            self.heartButton.layer.removeAllAnimations()
        }
    }
}


