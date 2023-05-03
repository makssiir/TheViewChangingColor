//
//  ViewController.swift
//  TheViewChangingColor
//
//  Created by Makssir on 28/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewWhichChanging: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redColoreDouble: UILabel!
    @IBOutlet weak var greenColorDouble: UILabel!
    @IBOutlet weak var blueColorDouble: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewWhichChanging.layer.cornerRadius = 30
        viewWhichChanging.layer.masksToBounds = false
        
        viewWhichChanging.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 2)
    }

    
    @IBAction func movingSliders() {
        redColoreDouble.text = String(format: "%.2f", redSlider.value)
        greenColorDouble.text = String(format: "%.2f", greenSlider.value)
        blueColorDouble.text = String(format: "%.2f", blueSlider.value)
        
        viewWhichChanging.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 2)   
    }
}

