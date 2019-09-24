import UIKit

var str = "Hello, playground"

var a = 1
let b = 1

if a == 1 {
    print("success")
} else {
    print("failure")
}

let test: String? = "test"
print(test)

// if letはoptionalのものの、中身を出せる
// 変数名を同じにできる
if let test = test {
    print(test)
}

// if letとほぼ同じ。ただ、カッコの中で使えるか、外で使えるか。
guard let test = test else {
    print("testはnilだった")
    fatalError()
}

