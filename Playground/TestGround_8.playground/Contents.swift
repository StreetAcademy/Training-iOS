import UIKit


let urlString = "https://api.github.com/search/repositories?q=swift"
//　URL型に型変換
//使う時はif let → optional型だから
guard let url: URL = URL(string: urlString) else {
    fatalError()
}


// 通信開始します

print("start")
// これは魔法の一行と。
let session: URLSession = URLSession(configuration: URLSessionConfiguration.default)

let task: URLSessionTask = session.dataTask(with: url) { data, urlResponse, error in
    print(error.debugDescription)
    if let response = urlResponse as? HTTPURLResponse {
        print(response.statusCode)
    }
    guard let data = data else {
        print("dataはnilだった")
        return
    }
    do {
        guard let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            print("dataはJSONの型じゃなかった")
            return
        }
        if let items = jsonArray["items"] as? [[String: Any]] {
            items.forEach {
                item in
                if let id = item["id"] as? Int {
                    print("idは \(id)")
                }
            }
        } else {
            print("idはIntじゃなかった")
        }
        
        // itemsの中のfull_Nameを表示
        if let items = jsonArray["items"] as? [[String: Any]] {
            items.forEach {
                item in
                if let fullName = item["full_name"] as? String {
                    print("full_nameは \(fullName)")
                }
            }
        } else {
            print("fullNameはStringじゃなかった")
        }
        
        // items -> ownerの中のavatar_urlを表示
        if let items = jsonArray["items"] as? [[String: Any]] {
            items.forEach {
                item in
                if let owner = item["owner"] as? [String: Any] {
                    if let avatarUrl = owner["avatar_url"] as? String {
                        // URL型に変換
                        let avatarUrlCast = URL(string: avatarUrl)
                        avatarUrlCast
                    }
                }
            }
            
        } else {
            print("avatarUrlはURLじゃなかった")
        }
        
        if let items = jsonArray["items"] as? [[String: Any]] {
            items.forEach {
                item in
                if let srtargazersCount = item["stargazers_count"] as? Int {
                    print("stargazers_countは \(srtargazersCount)")
                }
            }
        } else {
            print("stargazers_countはIntじゃなかった")
        }
        
        
    } catch let error {
        print(error)
        return
    }
    print("sessionが終わった")
}

// sessionのtaskを始める。つまり、APIの通信を始める。
task.resume()
print("taskを実行")


// 将来的にこうなれば良い
func get(_ url: URL, completion: @escaping (Result<Data, NSError>) -> Void) {
    let session: URLSession = URLSession(configuration: URLSessionConfiguration.default)
    let task: URLSessionDataTask = session.dataTask(with: url) { (data, response, error) -> Void in
        if let error = error {
            completion(.failure(error as NSError))
        } else if let data = data, let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 {
            completion(.success(data))
        }
    }
    task.resume()
}
