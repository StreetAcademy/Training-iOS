import UIKit

let dict = ["car":4, "bike":2]

let json = """

{
"total_count": 153139,
"incomplete_results": false,
"items": [
{
"id": 44838949,
"node_id": "MDEwOlJlcG9zaXRvcnk0NDgzODk0OQ==",
"name": "swift",
"full_name": "apple/swift",
"private": false,
"html_url": "https://github.com/apple/swift",
"description": "The Swift Programming Language",
"fork": false,
"stargazers_count": 49217,
"watchers_count": 49217,
"language": "C++",
"has_issues": false,
"has_projects": false,
"has_downloads": true,
"has_wiki": false,
"has_pages": false,
"forks_count": 7937,
"mirror_url": null,
"archived": false,
"disabled": false,
"open_issues_count": 577,
"forks": 7937,
"open_issues": 577,
"watchers": 49217,
"default_branch": "master",
"score": 158.31215
},
{
"id": 790019,
"node_id": "MDEwOlJlcG9zaXRvcnk3OTAwMTk=",
"name": "swift",
"full_name": "openstack/swift",
"private": false,
"html_url": "https://github.com/openstack/swift",
"description": "OpenStack Storage (Swift)",
"fork": false,
"size": 108347,
"stargazers_count": 1952,
"watchers_count": 1952,
"language": "Python",
"has_issues": false,
"has_projects": false,
"has_downloads": false,
"has_wiki": false,
"has_pages": false,
"forks_count": 976,
"mirror_url": null,
"archived": false,
"disabled": false,
"open_issues_count": 0,
"forks": 976,
"open_issues": 0,
"watchers": 1952,
"default_branch": "master",
"score": 120.572685
}
]
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
    if let total_count = array["total_count"] as? Int {
        print(total_count)
    }
    
    // itemsのfull_name取得
    if let items = array["items"] as? [[String: Any]] {
        items.forEach { item in
            if let fullName = item["full_name"] as? String {
                print(fullName)
            }
        }
    }
    
    // itemsのwatchers_count取得
    if let items2 = array["items"] as? [[String: Any]] {
        items2.forEach{ item in
            if let wathersCount = item["watchers_count"] as? Int {
                print("wathersCount： \(wathersCount)")
            }
        }
    }
    // itemsのlanguageを取得
    if let items3 = array["items"] as? [[String: Any]] {
        items3.forEach { item in
            if let language = item["language"] as? String {
                print("language：\(language)")
            }
        }
    }
    
    // itemsのhas_issueを取得
    if let items4 = array["items"] as? [[String: Any]] {
        items4.forEach { item in
            if let hasIssues = item["has_issues"] as? Bool {
                print("has_issues：\(hasIssues)")
            }
        }
    }
    
    //    print(jsonArray)
} catch let error {
    print(error)
}
