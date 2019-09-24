import UIKit

//
//// if文で 1 ~ 100まで表示 3の倍数と3がつく時バカを表示
//for i in  1...100 {
//    if i % 3 == 0 || i % 10 == 3 || i >= 30 && i < 40 {
//        print("バカ")
//    }
//    else{
//        print(i)
//    }
//}


// swicth文で1~100までを表示3の倍数と3がつくときバカを表示
for i in 1...100 {
    switch i {
    case let num where num  % 3 == 0:
        print("バカ")
    case let num where num  % 10 == 3:
        print("バカ")
    case let num where num >= 30 && num < 40:
        print("バカ")
    default:
        print(i)
    }
}
