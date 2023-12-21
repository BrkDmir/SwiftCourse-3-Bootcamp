//
//  ViewController.swift
//  UserInteraction
//
//  Created by Berkay DEMİR on 18.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in
            print("Cancel button selected")
        }
        let okAction = UIAlertAction(title: "Ok", style: .destructive){
            action in
            print("Ok button selected")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated:true)
        
        
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in
            print("Cancel button selected")
        }
        let okAction = UIAlertAction(title: "Ok", style: .destructive){
            action in
            print("Ok button selected")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated:true)
    }
    
    @IBAction func buttonSpecialAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Save", style: .cancel){
            action in
            let textField = alertController.textFields![0] as UITextField
            guard let alinanVeri = textField.text else{return}
            print("Veri: \(alinanVeri)")
            
        }
        alertController.addTextField{
            tf in
            tf.placeholder = "Veri Giriniz"
            tf.keyboardType = .numberPad
            tf.isSecureTextEntry = true
        }
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated:true)
    }
}

