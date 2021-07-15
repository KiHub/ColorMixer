//
//  ViewController.swift
//  ColorMixer
//
//  Created by  Mr.Ki on 14.07.2021.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var red: UILabel!
    
    @IBOutlet weak var green: UILabel!
    
    @IBOutlet weak var blue: UILabel!
    
    @IBOutlet weak var redCounter: UILabel!
    
    @IBOutlet weak var greenCounter: UILabel!
    
    @IBOutlet weak var blueCounter: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    
    @IBOutlet weak var greenTextField: UITextField!
    
    
    @IBOutlet weak var blueTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.text = "Red"
        green.text = "Green"
        blue.text = "Blue"
        
        blueCounter.text = "0"
        redCounter.text = "0"
        greenCounter.text = "0"
        
      //  redCounter.text = String(redSlider.value)
        
        
     //   colorView.backgroundColor = .red
        
        
        
        //blueTextField.text = "Hey"
        
    }
    
    
    
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        
        
        let redValue = lround(Double(redSlider.value))
        print(redValue)
        
        redCounter.text = String(redValue)
        
        redTextField.text = String(redValue)
        
        
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
        
        let greenValue = lround(Double(greenSlider.value))
        print(greenValue)
        
        greenCounter.text = String(greenValue)
        greenTextField.text = String(greenValue)
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        
        let blueValue = lround(Double(blueSlider.value))
        print(blueValue)
        
        blueCounter.text = String(blueValue)
        
        blueTextField.text = String(blueValue)
        
    }
    
    @IBAction func redTextFieldAction(_ sender: Any) {
    }
    
    @IBAction func greenTextFieldAction(_ sender: Any) {
    }
    
    @IBAction func blueTextFieldAction(_ sender: Any) {
    }
    
}

