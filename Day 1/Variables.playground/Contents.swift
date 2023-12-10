import UIKit

print("Merhaba Dünya")

var ogrenciAd: String = "Ahmet"
var ogrenciYas: Int = 25
var ogrenciBoy: Double = 1.85
var ogrenciBasHarf: Character = "A"
var ogrenciDevamDurumu: Bool = true

print(ogrenciAd)
print(ogrenciYas)
print(ogrenciYas)

var urun_id: Int = 3416
var urun_adi: String = "Macbook"
var urun_adet: Int = 100
var urun_fiyat: Int = 34999
var urun_tedarikci: String = "Apple"

print("Ürün id: \(urun_id)\nÜrün adı: \(urun_adi)")

var sayi = 10
print(sayi)
sayi = 20
print(sayi)

let num = 100
print(num)

// Type Casting

// Sayısaldan sayısala dönüşüm
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d) // Ondalıklı sayıdan tam sayıya dönüşümde aşağı veya yukarı yuvarlama yapılmaz sadece ondalıklı kısım silinir.
print(sonuc1)
print(sonuc2)

// Sayısaldan metine dönüşüm

var sonuc3 = String(i)
var sonuc4 = String(d)

print(sonuc3)
print(sonuc4)

// Metinden sayısala dönüşüm

var yazi = "34"

// Optional binding gerekir
if let sonuc5 = Int(yazi){
    print(sonuc5)
}

