//
//  ViewController.swift
//  ColorMixer
//
//  Created by  Mr.Ki on 14.07.2021.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    var redFloat:Float = 0.0
    var greenFloat:Float = 0.0
    var blueFloat:Float = 0.0
   
    
    
    
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
    
    @IBOutlet weak var setButton: UIButton!
    
    @IBOutlet weak var blueTextField: UITextField!
    
    var currentColor:UIColor = .clear
    var delegate: ColorDelegate?
    var colorFromColorVC: UIColor!
     
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButton.layer.cornerRadius = 20
        red.text = "Red"
        green.text = "Green"
        blue.text = "Blue"
        
        blueCounter.text = "0"
        redCounter.text = "0"
        greenCounter.text = "0"
        
        colorView.layer.cornerRadius = 20
        
        redSlider.value = 100
        greenSlider.value = 100
        blueSlider.value = 100
        
        redFloat = 100
        greenFloat = 100
        blueFloat = 100
        
        colorView.backgroundColor = UIColor.init(red:CGFloat(redFloat)/255, green:CGFloat(greenFloat)/255, blue: CGFloat(blueFloat)/255, alpha: 1)
       
        
        
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDone))
        toolBar.items = [flexibleSpace, doneButton]
        toolBar.sizeToFit()
        redTextField.inputAccessoryView = toolBar
        greenTextField.inputAccessoryView = toolBar
        blueTextField.inputAccessoryView = toolBar
        
        
        
        
//       var redOne = redSlider.value
//        var greenOne = greenSlider.value
//        var blueOne = blueSlider.value
        
        
        
        
             //  update()
      //  redCounter.text = String(redSlider.value)
        
        
     //   colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 0.5)
        
        

        //blueTextField.text = "Hey"
        
    }

    @objc private func didTapDone() {
        redTextField.resignFirstResponder()
        greenTextField.resignFirstResponder()
        blueTextField.resignFirstResponder()
        
        blueCounter.text = blueTextField.text
        redCounter.text = redTextField.text
        greenCounter.text = greenTextField.text
        
        let a = redCounter.text
        let b = blueCounter.text
        let g = greenCounter.text
        
        
        
        let redFloat = Float(a!)
        let greenFloat = Float(g!)
        let blueFloat = Float(b!)
        
        colorView.backgroundColor = UIColor.init(red:CGFloat(redFloat!)/255, green:CGFloat(greenFloat!)/255, blue: CGFloat(blueFloat!)/255, alpha: 1)

        redSlider.value = redFloat!
        greenSlider.value = greenFloat!
        blueSlider.value = blueFloat!
        
        
        
        
    }
    
    
    @IBAction func setButtonTapped(_ sender: UIButton) {
        
        
        guard let currentColor = colorView.backgroundColor else {
            return
        }
        print("This is ", currentColor)
        
        delegate?.setColor(currentColor)
        
    }
    
    
    @IBAction func allSliders(_ sender: UISlider) {
        
        
        
        
        let redFloat = redSlider.value
        let greenFloat = greenSlider.value
        let blueFloat = blueSlider.value

//        colorView.backgroundColor = UIColor.init(red:CGFloat(redSlider.value)/255, green:CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
        
        colorView.backgroundColor = UIColor.init(red:CGFloat(redFloat)/255, green:CGFloat(greenFloat)/255, blue: CGFloat(blueFloat)/255, alpha: 1)
        
        
        
        redCounter.text = redTextField.text
        greenCounter.text = greenTextField.text
        blueCounter.text = blueTextField.text

        

    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {


        let redValue = lround(Double(redSlider.value))
        print(redValue)

        redCounter.text = String(redValue)

        redTextField.text = String(redValue)
        
        

       // redFloat = CGFloat(sender.value)

       // update()


     //   self.colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)


    }
    @IBAction func greenSliderAction(_ sender: UISlider) {

        let greenValue = lround(Double(greenSlider.value))
        print(greenValue)

        greenCounter.text = String(greenValue)
        greenTextField.text = String(greenValue)

       // greenFloat = CGFloat(sender.value)

       // update()

      //  self.colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)
    }

    @IBAction func blueSliderAction(_ sender: UISlider) {

        let blueValue = lround(Double(blueSlider.value))
        print(blueValue)

        blueCounter.text = String(blueValue)

        blueTextField.text = String(blueValue)

       // blueFloat = CGFloat(sender.value)

       // update()
      //  self.colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)

    }
    
    @IBAction func redTextFieldAction(_ sender: Any) {
       
    }
    
    @IBAction func greenTextFieldAction(_ sender: Any) {
    }
    
    @IBAction func blueTextFieldAction(_ sender: Any) {
    }
 
    
//    func update() {
//        colorView.backgroundColor = UIColor.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)
//    }
    
    
    
}



