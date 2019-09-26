import UIKit

let dict = ["car":4, "bike":2]

let json = """
{
"name" : "Munesada",
"age" : 32
}
"""

do {
    let jsonData = try JSONSerialization.data(withJSONObject: jsonObj, options: [])
    let jsonStr = String(bytes: jsonData, encoding: .utf8)!
    print(jsonStr)  // 生成されたJSON文字列 => {"Name":"Taro"}
} catch let error {
    print(error)
}
