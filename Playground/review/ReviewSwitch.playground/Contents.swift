import UIKit

// Switch文 switch文の冒頭で定義した定数だけで使える
let number = 200

switch number {
case 0:
    print("0です")
case 200:
    print("200です")
default:
    print("どの数字でもありません")
}

// enum 宣言の基本
enum Fruits {
    case Apple
    case Banana
    case Orange
}

// enumとswitch文
let eat = Fruits.Banana

switch eat {
case Fruits.Apple:
    print("\(Fruits.Apple)は食べたくないです")
case Fruits.Banana :
    print("\(Fruits.Banana)は今すぐ食べたいです")
case Fruits.Orange:
    print("\(Fruits.Orange)は今はいらないです")
}

// enumとswitch文練習2
enum Shoes: String {
    case nike = "NIKE"
    case adidas = "adidas"
    case puma = "Puma"
    case converse = "コンバース"
    
    var shoesPrice: Int {
        switch self {
        case .nike:
            return 3000
        case .adidas:
            return 3500
        case .puma:
            return 2000
        case .converse:
            return 2500
    }
}

