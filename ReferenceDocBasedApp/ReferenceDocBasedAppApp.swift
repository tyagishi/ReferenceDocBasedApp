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
        DocumentGroup(newDocument: MyReferenceDoc.init, editor: { config in
            ContentView(refDocument: config.document)
        })
    }
}
