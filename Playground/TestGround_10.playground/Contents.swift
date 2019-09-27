import UIKit

let body: String = """
{
"item": {
"name": "Create",
"category": "PUT",
"price": 0706
}
}
"""

// fetch
func fetchItems() {
    // Data型からJson型に変換
    let jsonData = body.data(using: .utf8)
    
    // URLを変数(itemUrl)に格納
    let itemUrl = URL(string: "https://item-server.herokuapp.com/items")!
    // 取得したいAPIリクエストのURLを変数urlRequestに格納
    var urlRequest = URLRequest(url: itemUrl)
    // httpメソッドの定義
    urlRequest.httpMethod = "GET"
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
}

// POST
func createItem() {
    // Data型からJson型に変換
    let jsonData = body.data(using: .utf8)
    
    // URLを変数(itemUrl)に格納
    let itemUrl = URL(string: "https://item-server.herokuapp.com/create")!
    // 取得したいAPIリクエストのURLを変数urlRequestに格納
    var urlRequest = URLRequest(url: itemUrl)
    // httpメソッドの定義
    urlRequest.httpMethod = "POST"
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
}

// PUT
func updateItem() {
    // Data型からJson型に変換
    let jsonData = body.data(using: .utf8)
    // URLComponentsを用意
    var urlComponents = URLComponents(url: URL(string: "https://item-server.herokuapp.com/update")!, resolvingAgainstBaseURL: false)
    urlComponents?.queryItems = [URLQueryItem(name: "id", value: "1571")]
    // unwrap
    guard let url = urlComponents?.url else { fatalError() }
    var urlRequest = URLRequest(url: url)
    // httpメソッドの定義
    urlRequest.httpMethod = "PUT"
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
}

// DELETE
func deleteItem() {
    // Data型からJson型に変換
    let jsonData = body.data(using: .utf8)
    // URLComponentsを用意
    var urlComponents = URLComponents(url: URL(string: "https://item-server.herokuapp.com/delete")!, resolvingAgainstBaseURL: false)
    urlComponents?.queryItems = [URLQueryItem(name: "id", value: "1581")]
    // unwrap
    guard let url = urlComponents?.url else { fatalError() }
    var urlRequest = URLRequest(url: url)
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
}

updateItem()

//// bodyの定義
//let body: String = """
//{
//"item": {
//"name": "tarukawaTest",
//"category": "POSTTest",
//"price": 2000
//}
//}
//"""