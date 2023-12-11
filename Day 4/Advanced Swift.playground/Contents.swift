import UIKit

// Guard

func kisiTanima1(ad:String){
    if ad == "Ahmet"{
        print("Merhaba Ahmet")
    }else{
        print("Tanınmayan Kişi")
    }
}

kisiTanima1(ad:"Eren")

func kisiTanima2(ad:String){
    guard ad == "Ahmet" else{
        print("Tanınmayan kişi")
        return}
    print("Merhaba Ahmet")
}

kisiTanima2(ad: "Mehmet")


// Hata Ayıklama

enum Hatalar : Error {
    case sifiraBolunmeHatasi
    
}
func bolme(sayi1:Int,sayi2:Int) throws -> Int{
    if sayi2 == 0{throw Hatalar.sifiraBolunmeHatasi}
    return sayi1 / sayi2
}

let s1 = 5
let s2 = 0

do{
    let sonuc = try bolme(sayi1: s1, sayi2: s2) // try? kullanırsak hata oluştuğunda sonuç nil döner
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayı sıfıra bölünemez")
}

let sonuc = try? bolme(sayi1: s1, sayi2: s2)
print(sonuc)
