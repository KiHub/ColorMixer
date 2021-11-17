//
//  ColorViewController.swift
//  ColorMixer
//
//  Created by  Mr.Ki on 17.11.2021.
//

import UIKit

class ColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction  func unwind(for Segue: UIStoryboardSegue) {
        
        let VC = Segue.source as! ViewController
        VC.delegate = self
        view.backgroundColor = VC.currentColor
        
    }
    
    
}

extension ColorViewController: ColorDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
