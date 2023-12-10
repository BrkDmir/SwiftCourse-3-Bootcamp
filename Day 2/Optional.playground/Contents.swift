import UIKit

// Optional = Nullable = Null Safety

var str:String?
str = nil

if str != nil {
    print(str!) // unwrap
}else{
    print("nil")
}

// optional binding

if let temp = str {
    print(temp) // otomatik uwrap
}else{
    print("str nil değer içeriyor")
}



