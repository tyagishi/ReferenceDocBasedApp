//
//  ReferenceDocBasedAppDocument.swift
//
//  Created by : Tomoaki Yagishita on 2023/07/06
//  © 2023  SmallDeskSoftware
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var exampleText: UTType {
        UTType(importedAs: "com.example.plain-text")
    }
}

class MyReferenceDoc: ReferenceFileDocument {
    var text: String
    
    init() {
        self.text = "Hello world"
    }
    
    static var readableContentTypes: [UTType] { [.exampleText] }
    
    required init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        text = string
    }
    
    typealias Snapshot = String
    func snapshot(contentType: UTType) throws -> String {
        text
    }
    
    func fileWrapper(snapshot: String, configuration: WriteConfiguration) throws -> FileWrapper {
        let data = snapshot.data(using: .utf8)!
        return .init(regularFileWithContents: data)
    }
}
