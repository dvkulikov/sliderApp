//
//  ViewController.swift
//  sliderApp
//
//  Created by 1 on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLabelNumber: UILabel!
    @IBOutlet var greenLabelNumber: UILabel!
    @IBOutlet var blueLabelNumber: UILabel!
    
    @IBOutlet var unitedColorLabel: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        unitedColorLabel.layer.cornerRadius = 10
        //slider options
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        //numberLabel
        redLabelNumber.text = String(redSlider.value)
        greenLabelNumber.text = String(greenSlider.value)
        blueLabelNumber.text = String(blueSlider.value)
        
    }

    @IBAction func redSliderMove() {
        redLabelNumber.text = String(format: "%.2f", redSlider.value)
    }
    
    
}
