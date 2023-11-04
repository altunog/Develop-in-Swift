import UIKit

let url = URL(string: "https://www.apple.com")!
print(url.scheme as Any)
print(url.host() as Any)
print(url.query() as Any)

Task {
    let (data, response) = try await URLSession.shared.data(from: url)

    if let httpResponse = response as? HTTPURLResponse,
       httpResponse.statusCode == 200,
       let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
