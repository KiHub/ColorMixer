//
//  ViewController.swift
//  ColorMixer
//
//  Created by  Mr.Ki on 14.07.2021.
//

import UIKit

class ViewController: UIViewController {

    
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
    
    @IBOutlet weak var blueTextField: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    
    @IBAction func redSliderAction(_ sender: UISlider) {
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
    }
    
    @IBAction func redTextFieldAction(_ sender: Any) {
    }
    
    @IBAction func greenTextFieldAction(_ sender: Any) {
    }
    
    @IBAction func blueTextFieldAction(_ sender: Any) {
    }
    
}

