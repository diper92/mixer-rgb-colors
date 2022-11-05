//
//  ViewController.swift
//  mixer rgb colors
//
//  Created by Dima Perepadin on 05.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        setColor()
    }
    
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(
            red:CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            
        )
        setColor()
    }
    
    private func setColor() {
        redLable.text = String(format: "%.2f", redSlider.value)
        greenLable.text = String(format: "%.2f",greenSlider.value)
        blueLabel.text  = String(format: "%.2f", blueSlider.value)
        
    }
    
}


