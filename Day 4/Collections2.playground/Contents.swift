import UIKit

// Set

var meyveler = Set<String>()

// Veri Ekleme

meyveler.insert("Elma")
meyveler.insert("Muz")
meyveler.insert("Çilek")

for i in meyveler{
    print(i)
}

for (indeks,meyve) in meyveler.enumerated(){
    print("\(indeks) -> \(meyve)")
}

print("Boyut: \(meyveler.count)")
print("Boş mu: \(meyveler.isEmpty)")

meyveler.remove("Elma")
meyveler.removeAll()


// Dictionary

var iller = [Int:String]()

iller[66] = "Yozgat"
iller[62] = "Tunceli"
iller[52] = "Ordu"
iller[06] = "Ankara"
iller[71] = "Kırıkkale"
iller[05] = "Amasya"

print(iller)

// Veri okuma

print(iller[52]!)


for(anahtar,deger) in iller
{
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 71)
