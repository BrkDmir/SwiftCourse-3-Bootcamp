import UIKit

class Functions {
    
    // Geri dönüş değeri olmayan (void)
    func selamla1(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    // Geri dönüş değeri olan (return)
    func selamla2() -> String{
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    // Parametreli geri dönüşsüz
    func selamla3(isim:String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    // Parametreli geri dönüşlü
    func toplama(sayi1:Int,sayi2:Int) -> Int {
        let sonuc = sayi1 + sayi2
        return sonuc
    }
    
    // Overloading
    func carpma(sayi1:Int,sayi2:Int){
        print(sayi1 * sayi2)
        
    }
    func carpma(sayi1:Double,sayi2:Double){
        print(sayi1 * sayi2)
        
    }
}

let f = Functions()
f.selamla1()

let mesaj: String = f.selamla2()
print(mesaj)

f.selamla3(isim: "Mehmet")

let toplam: Int = f.toplama(sayi1: 52, sayi2: 66)
print(toplam)

f.carpma(sayi1: 10, sayi2: 20)

// Static Variables and Methods

class Aclass {
    static var x = 10
    
    static func method(){
        print("Metod çalıştı")
    }
}
/*
 var a = Aclass()
 
 print(a.x)
 a.method()
 
 print(Aclass().x) // Sanal nesne - virtual object
 Aclass().method()
 */

print(Aclass.x)
Aclass.method()




// Enumeration

enum KonserveBoyut {
    case small
    case medium
    case large
}

func ucretHesapla(boyut:KonserveBoyut,adet:Int){
    switch boyut {
    case .small:
        print("Fiyat: \(adet*13) $")
    case .medium:
        print("Fiyat: \(adet*24) $")
    case .large:
        print("Fiyat: \(adet*45) $")
        
    }
}
ucretHesapla(boyut: .medium, adet: 100)



// Composition

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_ad = kategori_ad
        self.kategori_id = kategori_id
    }
}
class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
class Filmler {
    var film_id:Int?
    var fim_ad:String?
    var film_yil:Int?
    var kategori_id:Kategoriler?
    var yonetmen_id:Yonetmenler?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori_id:Kategoriler,yonetmen_id:Yonetmenler){
        self.film_id = film_id
        self.fim_ad = film_ad
        self.film_yil = film_yil
        self.kategori_id = kategori_id
        self.yonetmen_id = yonetmen_id
    }
    
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Korku")
let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Aksiyon")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Nuri Bilge Ceylan")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quentin Tarantino")

let f1 = Filmler(film_id: 1, film_ad: "Kış Uykusu", film_yil: 2015, kategori_id: k1, yonetmen_id: y1)

