//
//  ViewController.swift
//  WorkingStructure
//
//  Created by Berkay DEMİR on 18.12.2023.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var labelHome: UILabel!
    // Leading - Left - Start
    // Trailing - Right - End

    override func viewDidLoad() { // Uygulama ilk açıldığında çalışır (1 kez çalışır)
        super.viewDidLoad()
        labelHome.text = "Welcome"
        print("ViewDidLoad Çalıştı")
        
    }
    override func viewWillAppear(_ animated: Bool) { // Sayfa her göründüğünde çalışır
        // Ayrıca sayfaya geri dönüldüğünde de çalışır
        print("ViewWillAppear Çalıştı")
        
    }
    override func viewWillDisappear(_ animated: Bool) { // Sayfa her görünmez olduğunda çalışır
        print("ViewWillDisappear Çalıştı")
        
    }

    @IBAction func buttonDo(_ sender: Any) {
        labelHome.text = "Hi!"
        
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        let kisiObj = Kisiler()
        kisiObj.ad = "Selo"
        kisiObj.yas = 22
        kisiObj.boy = 1.93
        kisiObj.bekar = true
        performSegue(withIdentifier: "goToGamePage", sender: kisiObj)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       print("Prepare metodu çalıştı")
        if segue.identifier == "goToGamePage"{
            print("Game sayfasına geçiş yapıldı")
            
            guard let veri = sender as? Kisiler else{return}
            let destinationVC = segue.destination as! GameVC
            destinationVC.kisi = veri
        }
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("ADD butonu seçildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save butonu seçildi")
        
    }
}

