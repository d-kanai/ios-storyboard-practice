import Foundation
import XCTest
import WiremockClient
@testable import ios_storyboard_practice

class CounterLogicTests: XCTestCase {
    
    func test_hoge() async throws {
        //given
        try WiremockClient.postMapping(stubMapping:
            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlEqualTo, url: "/sample")
                .willReturn(ResponseDefinition().withStatus(200).withBody("{\"message\":\"wiremock return\"}")))
        //when
        let actual = try await CounterLogic().sampleMethod()
        //then
        XCTAssertEqual("wiremock return", actual)
    }
    
}
