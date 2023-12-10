import UIKit

protocol MyProtocol{
    var degisken:Int {get set}
    
    func method1()
    func method2() -> String
}

class ClassA: MyProtocol{
    var degisken: Int = 10
    func method1() {
        print("Method 1 Çalıştı")
    }
    func method2() -> String {
        return "Method 2 çalıştı"
    }
}

var a = ClassA()
print(a.degisken)
a.method1()
var mesaj = a.method2()
print(mesaj)


// Extension

extension Int {
    func carp(sayi:Int)->Int{
        return self * sayi
    }
}
let x = 3.carp(sayi: 5)
print(x)

// Closure

let ifade = {
    print("Merhaba")
}

ifade()
