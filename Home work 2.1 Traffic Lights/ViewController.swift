//
//  ViewController.swift
//  Home work 2.1 Traffic Lights
//
//  Created by Maksim Grebenozhko on 23/07/2019.
//  Copyright © 2019 Maksim Grebenozhko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    var currentLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
        redLight.backgroundColor = .red
        yellowLight.backgroundColor = .yellow
        greenLight.backgroundColor = .green
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        
        let lowAlpha: CGFloat = 0.3
        let highAlpha: CGFloat = 1
        
        button.setTitle("NEXT", for: .normal)
        
        currentLight = currentLight == 3 ? 1 : currentLight + 1

        redLight.alpha = lowAlpha
        yellowLight.alpha = lowAlpha
        greenLight.alpha = lowAlpha

        switch currentLight {
        case 1:
            redLight.alpha = highAlpha
        case 2:
            yellowLight.alpha = highAlpha
        case 3:
            greenLight.alpha = highAlpha
        default:
            break
        }
    }
}

