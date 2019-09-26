import UIKit

let dict = ["car":4, "bike":2]

let json = """

{
"name" : "Munesada",
"age" : 32,
"profile": {
"area": "tokyo"
}
}
"""
do {
    // data型に変換
    guard let jsonData = json.data(using: .utf8) else { fatalError() }
    // data型から[String: Any]に変換する Jsonの中身がStringもIntもあるので
    let jsonArray = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any]
    // jsonArrayのoptionalをなくす
    guard let array = jsonArray else { fatalError() }
    
    // profileの中身は[Key String: Value String]型 
    if let profile = array["profile"] as? [String: String] {
        print(profile["area"]!)
    }
    
    //    print(jsonArray)
} catch let error {
    print(error)
}
