import UIKit

class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi:pencereSayisi)
    }
}
class Villa:Ev {
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int){
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topKapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)


// Override

class Hayvan{
    func sesCikar(){
        print("Sesim Yok")
    }
}
class Memeli:Hayvan{
   override func sesCikar(){
        print("Sesim Yok")
    }
}
class Kedi:Memeli{
    override func sesCikar(){
        print("Miyav")
    }
}


// Nesnelerin Tip Dönüşümü

// Upcasting
var ev = Saray(kuleSayisi: 3, pencereSayisi: 20) as Ev

// DownCasting

var saray = Ev(pencereSayisi: 8) as! Saray
var villa = Ev(pencereSayisi: 15) as? Villa

// Tip Kontrolü

if ev is Ev {
    print("Nesne Ev sınıfından")
}else{
    print("Nesne Ev sınıfından değildir")
}

