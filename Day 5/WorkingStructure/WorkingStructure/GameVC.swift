//
//  GameVC.swift
//  WorkingStructure
//
//  Created by Berkay DEMİR on 18.12.2023.
//

import UIKit

class GameVC: UIViewController {

    var kisi:Kisiler?
        
    @IBOutlet weak var labelGame: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let k = kisi else{return}
        print("Kişi Ad: \(k.ad!)")
        print("Kişi Yas: \(k.yas!)")
        print("Kişi Boy: \(k.boy!)")
        print("Kişi BekarMı?: \(k.bekar!)")
        labelGame.text = k.ad
    }
    

    @IBAction func buttonBack(_ sender: Any) {
        // Bir önceki sayfaya dönüş
        // navigationController?.popViewController(animated: true)
        // Home page'e dönüş
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func buttonDone(_ sender: Any) {
        performSegue(withIdentifier: "goToResultPage", sender: nil)
        
    }
    
}
