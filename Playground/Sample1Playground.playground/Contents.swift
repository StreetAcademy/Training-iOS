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

let number: Int = 5

switch number {
case 5:
    print("5だった")
default:
    print("ちがった")
}

let sample: String = "sample"

// swiftのswitchは複数条件を指定できる
switch (number, sample) {
case (5, "sample"):
    print("sample 5 だった")
default:
    print("ちがった")
}

// 乱数
let random = Int.random(in: 0..<10)
print(random)

// switch文には複数の条件式を加えられる
switch random {
case 1:
    print("1やで")
case 2:
    print("2やで")
default:
    print("その他やで")
}

// 配列
let array = [1,2,3,4,5]

// 普通のfor文
print("普通のfor文")
for num in array {
    print(num)
}

print("範囲指定のfor文")
for num in 1...10 {
  print(num)
}

// forEach
print("forEach1")
array.forEach { num in
    print(num)
}

print("forEach2")
array.forEach {
    print($0)
}

// なべあつ課題
for num in 1...100 {
    if num % 3 == 0 || num % 10 == 3 || num >= 30 && num < 40 {
        print("バカ")
    } else {
        print(num)
    }
}
