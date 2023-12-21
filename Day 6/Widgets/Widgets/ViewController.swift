//
//  ViewController.swift
//  Widgets
//
//  Created by Berkay DEMİR on 19.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var indicatorOutlet: UIActivityIndicatorView!
    @IBOutlet weak var stepperAction: UIStepper!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var imageMotion: UIImageView!
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var segemntedControl: UISegmentedControl!
    @IBOutlet weak var textFieldInput: UITextField!
    
    @IBOutlet weak var labelSlider: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(sliderOutlet.value))
        labelStepper.text = String(Int(stepperAction.value))
        indicatorOutlet.isHidden = true
    }
    @IBAction func buttonDo(_ sender: Any) {
        guard let takenData = textFieldInput.text else {return}
        labelResult.text = takenData
        
    }
    @IBAction func stepperAction(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    @IBAction func buttonSad(_ sender: Any) {
        imageMotion.image = UIImage(named: "Sad")
    }
    @IBAction func buttonHappy(_ sender: Any) {
        imageMotion.image = UIImage(named: "Happy")
    }
    
    @IBAction func buttonShow(_ sender: Any) {
        print("Switch Mode: \(switchOutlet.isOn)")
    }
    
    @IBAction func switchChange(_ sender: UISwitch) {
        if sender.isOn {
            print("Sender is On")
        }else{
            print("Sender is Off")
        }
    }
    @IBAction func segmentedControlFunc(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        let selectedCategory = sender.titleForSegment(at: selectedIndex)
        print(("Seçilen Kategori: \(selectedCategory!)"))
    }
    
    @IBAction func buttonStop(_ sender: Any) {
        indicatorOutlet.isHidden = true
        indicatorOutlet.stopAnimating()
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        indicatorOutlet.isHidden = false
        indicatorOutlet.startAnimating()
    }
}

