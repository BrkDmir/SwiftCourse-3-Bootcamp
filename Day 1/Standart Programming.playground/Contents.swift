import UIKit

// Karşılaştırma Operatörleri

var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a == b)")
print("a >= b : \(a >= b)")
print("a <= b : \(a <= b)")
print("a != b : \(a != b)")
print("a < b  : \(a < b)")
print("a > b  : \(a > b)")

print("a > b || x > y : \(a > b || x > y) ") // Or
print("a > b && x > y : \(a > b && x > y) ") // And

// If

var yas = 25
var isim = "Ahmet"


if isim == "Ahmet"{
    print("Hoşgeldin ahmet")
}else{
    print("Tanınmayan kişi")
}

if yas >= 18 {
    print("Reşitsiniz")
}else if yas < 18{
    print("Reşit Değilsiniz")
}

var ka = "admin"
var s = 12345
if ka == "admin" && s == 12345{
    print("Hoşgeldiniz")
}else{
    print("Hatalı Giriş")
}

var sonuc = 9

if sonuc == 9 || sonuc == 10{
    print("Sonuç 9 veya 10'dur")
}else{
    print("Sonuç 9 veya 10 değildir")
}

// Switch

var gun = 3

switch gun {
case 1:
    print("Pazartesi")
case 2:
    print("Salı")
case 3:
    print("Çarşamba")
case 4:
    print("Perşembe")
case 5:
    print("Cuma")
case 6:
    print("Cumartesi")
case 7:
    print("Pazar")
default:
    print("Böyle bir gün yok")
}

// Döngüler

for i in 1...3{
    print(i)
}

// 10 ile 20 arası 5 er 5 er
for i in stride(from: 10, through: 20, by: 5) {
    print(i)
}

for i in stride(from: 500, through: 100, by: -5){
    print(i)
}

var counter: Int = 0

while counter < 21{
    print(counter)
    counter += 1
}

// break - continue

for i in 1...10{
    if i == 5 || i == 7 {
        continue
    }
    if i == 9{
        break
    }
    print(i)
}
