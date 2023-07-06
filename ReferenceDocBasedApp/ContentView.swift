//
//  ContentView.swift
//
//  Created by : Tomoaki Yagishita on 2023/07/06
//  © 2023  SmallDeskSoftware
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var refDocument: MyReferenceDoc

    var body: some View {
        VStack {
            Text("ReferenceDocApp")
            TextEditor(text: $refDocument.text)
        }
    }
}

#Preview {
    ContentView(refDocument: MyReferenceDoc())
}
