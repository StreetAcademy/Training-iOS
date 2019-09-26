import UIKit

let dict = ["car":4, "bike":2]

let json = """
{
"name" : "Munesada",
"age" : 32
}
"""

do {
    // data型に変換
    guard let jsonData = json.data(using: .utf8) else { fatalError() }
    // data型から[String: Any]に変換する Jsonの中身がStringもIntもあるので
    let jsonArray = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any]
    // jsonArrayのoptionalをなくす
    guard let array = jsonArray else { fatalError() }
    if let age = array["name"] as? String {
        print(age)
    }
    //    print(jsonArray)
} catch let error {
    print(error)
}
