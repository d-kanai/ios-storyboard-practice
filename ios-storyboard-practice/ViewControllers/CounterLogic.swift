
import Foundation

class CounterLogic {
    
    func someMethod() async throws -> String {
        print("call someMethod!!")
        let _:Response = try await HttpClient().get(url: "/sample")
        return "real return"
    }
    
}

struct Response: Codable {
    
}
