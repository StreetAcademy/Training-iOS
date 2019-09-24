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


// struct
struct Banana {
    var count: Int

    init(count: Int) {
        self.count = count
    }
}

let hayashi = Banana(count: 4)

// classとstructの違い1

struct test1 {
    let cat: String
    let dog: String
}

class test2 {
    let cat: String
    let dog: String
    init(cat: String, dog: String) {
        self.cat = cat
        self.dog = dog
    }
}

var a = test1(cat: "たま", dog: "ぽち")
let b = test1(cat: "たま2", dog: "ぽち2")

print(a.cat)
print(b.cat)

// classとstructの違い2

class cat {
    var like: String = "魚"
}

struct dog {
    var like: String = "肉"
}

let tama: cat = cat()
let pochi: dog = dog()

func initWithData(_ data: cat) {
 var data = data
 data.like = "マタタビ"
}

func initWithData2(_ data: dog) {
 var data = data
 data.like = "マタタビ"
}

initWithData(tama)
initWithData2(pochi)

print(tama.like)
print(pochi.like)
// structはinitializeの時にしか、値を入れられない
// classはいつでも入れられる
