//
//  ContentView.swift
//
//  Created by : Tomoaki Yagishita on 2023/07/06
//  © 2023  SmallDeskSoftware
//

import SwiftUI

struct ContentView: View {
    @Binding var document: ReferenceDocBasedAppDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(ReferenceDocBasedAppDocument()))
}
