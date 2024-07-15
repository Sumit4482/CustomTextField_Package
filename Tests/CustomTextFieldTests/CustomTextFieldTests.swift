import XCTest
import SwiftUI
@testable import CustomTextField

final class CustomTextFieldTests: XCTestCase {
    func testCustomTextField() {
           let binding = Binding<String>(get: { "" }, set: { _ in })
           let view = CustomTextField(text: binding, placeholder: "Enter text")
           XCTAssertNotNil(view.body)
       }
}
