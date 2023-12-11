import UIKit

// Array Kullanımı

var numbers = [10,20,30]
var meyveler = [String]()

// Veri Ekleme

meyveler.append("Elma")
meyveler.append("Muz")
meyveler.append("Çilek")
print(meyveler)

// Güncelleme
meyveler[0] = "Kiraz"

// Insert
meyveler.insert("Portakal", at:1)
print(meyveler)

// Veri Okuma

print(meyveler[2])
let muz = meyveler[2]

print("Boyut: \(meyveler.count)")
print("boş kontrolü: \(meyveler.isEmpty)")

for i in meyveler{
    print(i)
}

for (indeks,meyve) in meyveler.enumerated(){
    print("Numara: \(indeks)-> Meyve: \(meyve)")
}

meyveler.remove(at: 1)
meyveler.removeAll()

// Nesne Tabanlı

class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var ogr1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var ogr2 = Ogrenciler(no: 300, ad: "Ahmet", sinif: "10B")
var ogr3 = Ogrenciler(no: 400, ad: "Elif", sinif: "11A")

var ogrencilerListesi = [Ogrenciler]()

ogrencilerListesi.append(ogr1)
ogrencilerListesi.append(ogr2)
ogrencilerListesi.append(ogr3)

for i in ogrencilerListesi{
    print("No: \(i.no!) -> Ad: \(i.ad!) -> Sınıf: \(i.sinif!)")
}

print("*****************************")
// Filtreleme

var f1 = ogrencilerListesi.filter({$0.no! > 200 && $0.no! < 400})

for i in f1{
    print("No: \(i.no!) -> Ad: \(i.ad!) -> Sınıf: \(i.sinif!)")
}


var f2 = ogrencilerListesi.filter({$0.ad!.contains("y")})

for i in f2{
    print("No: \(i.no!) -> Ad: \(i.ad!) -> Sınıf: \(i.sinif!)")
}


// Sorting

var s1 = ogrencilerListesi.sorted { $0.no! > $1.no! }

for i in s1{
    print("No: \(i.no!) -> Ad: \(i.ad!) -> Sınıf: \(i.sinif!)")
}

