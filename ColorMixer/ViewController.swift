//
//  ViewController.swift
//  ColorMixer
//
//  Created by  Mr.Ki on 14.07.2021.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    
    var redFloat: CGFloat = 0.0
    var greenFloat: CGFloat = 0.0
    var blueFloat: CGFloat = 0.0
    
    
    
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
        
        colorView.layer.cornerRadius = 20
        
             //  update()
      //  redCounter.text = String(redSlider.value)
        
        
     //   colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 0.5)
        
        

        //blueTextField.text = "Hey"
        
    }

   
    
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        
        
        let redValue = lround(Double(redSlider.value))
        print(redValue)
        
        redCounter.text = String(redValue)
        
        redTextField.text = String(redValue)
        
        redFloat = CGFloat(sender.value)
        
        update()
        
        
     //   self.colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)
        
        
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
        
        let greenValue = lround(Double(greenSlider.value))
        print(greenValue)
        
        greenCounter.text = String(greenValue)
        greenTextField.text = String(greenValue)
        
        greenFloat = CGFloat(sender.value)
        
        update()
        
      //  self.colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        
        let blueValue = lround(Double(blueSlider.value))
        print(blueValue)
        
        blueCounter.text = String(blueValue)
        
        blueTextField.text = String(blueValue)
        
        blueFloat = CGFloat(sender.value)
        
        update()
      //  self.colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)
        
    }
    
    @IBAction func redTextFieldAction(_ sender: Any) {
    }
    
    @IBAction func greenTextFieldAction(_ sender: Any) {
    }
    
    @IBAction func blueTextFieldAction(_ sender: Any) {
    }
 
    
    func update() {
        colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)
    }
    
    
    
}




