import UIKit

class Araba {
    var renk: String?
    var hiz: Int?
    var calisiyorMu: Bool?
    
    
    init() {
        
    }
    
    init(renk: String, hiz: Int, calisiyorMu: Bool) {
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
    }
    
    func calistir(){ // Side effect
        calisiyorMu = true
        hiz = 5
    }
    func durdur(){
        hiz = 0
        calisiyorMu = false
        
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("Renk: \(renk!)")
        print("Hız: \(hiz!)")
        print("Çalışıyor Mu: \(calisiyorMu!)")
    }
}

// Nesne oluşturma

var bmw = Araba()
var mercedes = Araba()

// değer atama

bmw.renk = "mavi"
bmw.hiz = 120
bmw.calisiyorMu = true

mercedes.renk = "siyah"
mercedes.hiz = 0
mercedes.calisiyorMu = false

// değer okuma

print("Renk: \(bmw.renk!)")
bmw.bilgiAl()
mercedes.bilgiAl()

mercedes.calistir()
mercedes.hizlan(kacKm: 10)
mercedes.yavasla(kacKm: 5)
mercedes.durdur()

var renault = Araba(renk: "Gri", hiz: 100, calisiyorMu: true)
