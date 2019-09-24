import UIKit


//1 ~ 100まで表示 3の倍数と3がつく時バカを表示
for i in  1...100 {
    if i % 3 == 0 || i % 10 == 3 || i >= 30 && i < 40 {
        print("バカ")
    }
    else{
        print(i)
    }
}

