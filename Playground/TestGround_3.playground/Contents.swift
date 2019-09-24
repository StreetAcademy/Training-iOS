import UIKit

// TwitterのClass作成

class Tweet {
    var text: String
    var favorite: Int
    var retweetCount: Int
    var userName: String
    var image: UIImage?
    
    init(text: String, favorite: Int, retweetCount: Int, userName: String, image: UIImage?) {
        self.text = text
        self.favorite = favorite
        self.retweetCount = retweetCount
        self.userName = userName
        self.image = image
    }
}

var twitter = Tweet(text: "今日はいい天気", favorite: 3, retweetCount: 3, userName: "tarukawa", image: nil)
print(twitter.text)

