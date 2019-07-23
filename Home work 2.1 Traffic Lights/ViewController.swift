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
    @IBOutlet weak var label: UILabel!
    
    var curLight = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = redLight.layer.visibleRect.size.height / 2
        yellowLight.layer.cornerRadius = yellowLight.layer.visibleRect.size.height / 2
        greenLight.layer.cornerRadius = greenLight.layer.visibleRect.size.height / 2
        
        redLight.backgroundColor = UIColor.red
        yellowLight.backgroundColor = UIColor.yellow
        greenLight.backgroundColor = UIColor.green

        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        
        button.setTitle("NEXT", for: .normal)
        
        curLight = curLight == 3 ? 1 : curLight + 1

        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3

        switch curLight {
        case 1:
            redLight.alpha = 1
        case 2:
            yellowLight.alpha = 1
        case 3:
            greenLight.alpha = 1
        default:
            break
        }
    }
}

