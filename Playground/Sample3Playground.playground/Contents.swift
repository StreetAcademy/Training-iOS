import UIKit

class Dog {

    var name: String = ""
    static var type = "犬"
}

// 複製できものは()付きで参照できる
let suzuki = Dog()
suzuki.name = "ポチ"
print(Dog.type)
print(suzuki.name)

Dog.type = "猫"

let sato = Dog()
sato.name = "ハゲ"
print(Dog.type)
print(sato.name)

// staticなものは()を付けない
var tanaka = Dog.type
tanaka = "イルカ"

print(Dog.type)

// ---

class Apple {

    private(set) var count = 0
    private(set) var name = ""

    init(count: Int) {
        self.count = count
    }

    init(count: Int, name: String) {
        self.count = count
        self.name = name
    }
}

let mori = Apple(count: 5)
print(mori.count)

let kobayashi = Apple(count: 10, name: "takeshi")
print(mori.name)

