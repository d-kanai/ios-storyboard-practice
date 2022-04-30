
import Foundation

class CounterLogic {
    
    func sampleMethod() async throws -> String {
        print("call sampleMethod!!")
        let response:Response = try await HttpClient().get(url: "/sample")
        return response.message
    }
    
}

struct Response: Codable {
    var message: String
    
}
