import UIKit

//Task {
//    let url: URL = URL(string: "https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com")!
//    let (data, _): (Data, URLResponse) = try! await URLSession.shared.data(from: url)
//    let jsonString: String = String(data: data, encoding: .utf8)!
//    
//    print(jsonString)
//}

Task {
    let url: URL = URL(string: "https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com")!
    let (data, _) : (Data, URLResponse) = try! await URLSession.shared.data(from: url)
    
    let decoder: JSONDecoder = JSONDecoder()
    let dramaCollection: DramaCollection = try! decoder.decode(DramaCollection.self, from: data)
    
    print("bigBanner : ", dramaCollection.bigBanner)
    
    for drama in dramaCollection.dramas {
        print("categoryTitle : ", drama.categoryTitle)
        
        for poster in drama.posters {
            print("poster : ", poster)
        }
    }
}

struct DramaCollection: Codable {
    var bigBanner: String
    var dramas: [Drama]
    
    enum CodingKeys: String, CodingKey {
        case bigBanner = "BIG_BANNER"
        case dramas = "DRAMAS"
    }
}

struct Drama: Codable {
    var categoryTitle: String
    var posters: [String]
    
    enum CodingKeys: String, CodingKey {
        case categoryTitle = "CATEGORY_TITLE"
        case posters = "POSTERS"
    }
}
