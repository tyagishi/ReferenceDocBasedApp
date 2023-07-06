//
//  ReferenceDocBasedAppApp.swift
//
//  Created by : Tomoaki Yagishita on 2023/07/06
//  © 2023  SmallDeskSoftware
//

import SwiftUI

@main
struct ReferenceDocBasedAppApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: ReferenceDocBasedAppDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
