//
//  ViewController.swift
//  TrafficLights
//
//  Created by Глеб on 07.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var yellowTrafficLightSignalView: UIView!
    @IBOutlet var redTrafficLightSignalView: UIView!
    @IBOutlet var greenTrafficLightSignalView: UIView!
    @IBOutlet var showTextButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLightSignalView.alpha = 0.3
        redTrafficLightSignalView.layer.cornerRadius = 63
        
        yellowTrafficLightSignalView.alpha = 0.3
        yellowTrafficLightSignalView.layer.cornerRadius = 63
        
        greenTrafficLightSignalView.alpha = 0.3
        greenTrafficLightSignalView.layer.cornerRadius = 63
        
        showTextButton.layer.cornerRadius = 10
    }

    @IBAction func showTextButtonPressed() {
       
        if redTrafficLightSignalView.alpha < 1 &&
            yellowTrafficLightSignalView.alpha < 1 {
            redTrafficLightSignalView.alpha = 1
            greenTrafficLightSignalView.alpha = 0.3
            showTextButton.setTitle("NEXT", for: .normal)
        }else if yellowTrafficLightSignalView.alpha < 1 && greenTrafficLightSignalView.alpha < 1 {
            redTrafficLightSignalView.alpha = 0.3
            yellowTrafficLightSignalView.alpha = 1
        } else if greenTrafficLightSignalView.alpha < 1 {
            yellowTrafficLightSignalView.alpha = 0.3
            greenTrafficLightSignalView.alpha = 1
        }
        
    }
    
}

