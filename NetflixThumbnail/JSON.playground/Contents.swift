import UIKit

Task {
    let url: URL = URL(string: "https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com")!
    let (data, _): (Data, URLResponse) = try! await URLSession.shared.data(from: url)
    let jsonString: String = String(data: data, encoding: .utf8)!
    
    print(jsonString)
}
