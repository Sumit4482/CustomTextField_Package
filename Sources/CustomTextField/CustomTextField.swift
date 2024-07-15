// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

@available(iOS 13.0, *)
public struct CustomTextField: View {
    @Binding var text: String
    public var placeholder: String

    public init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    public var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .autocapitalization(.none)
            .disableAutocorrection(true)
    }
}
