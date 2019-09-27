import UIKit


// bodyの定義
let body: String = """
{
"item": {
"name": "tarukawaTest",
"category": "POSTTest",
"price": 2000
}
}
"""
// Data型からJson型に変換
let jsonData = body.data(using: .utf8)

// URLを変数(itemUrl)に格納
var itemUrl = URL(string: "https://item-server.herokuapp.com/delete?id=1521")!
// 取得したいAPIリクエストのURLを変数urlRequestに格納
var urlRequest = URLRequest(url: itemUrl)
// httpメソッドの定義
urlRequest.httpMethod = "DELETE"
// Headerの定義
urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
// Bodyの定義
urlRequest.httpBody = jsonData

// 通信の開始
print("通信スタート")

// 魔法の一行
let session: URLSession = URLSession(configuration: URLSessionConfiguration.default)

let task: URLSessionTask = session.dataTask(with: urlRequest) { data, urlResponse, error in
    print("checkout1")
    if let response = urlResponse as? HTTPURLResponse {
        print(response.statusCode)
    }
}

task.resume()
