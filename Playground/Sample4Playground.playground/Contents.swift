import UIKit

var str = "Hello, playground"

let body: String = """
{
"item": {
"name": "hogehoge",
"category": "training",
"price": 2000
}
}
"""

let jsonData = body.data(using: .utf8)

var itemUrl = URL(string: "https://item-server.herokuapp.com/create")!
var urlRequest = URLRequest(url: itemUrl)
urlRequest.httpMethod = "POST" // "GET", "POST", "PUT", "DELETE"
urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
//urlRequest.allHTTPHeaderFields = ["Content-Type": "application/json"]
urlRequest.httpBody = jsonData

// 通信開始します

print("start")
// これは魔法の一行と。
let session: URLSession = URLSession(configuration: URLSessionConfiguration.default)

let task: URLSessionTask = session.dataTask(with: urlRequest) { data, urlResponse, error in
    print("checkout1")
    if let response = urlResponse as? HTTPURLResponse {
        print(response.statusCode)
    }
}

task.resume()
