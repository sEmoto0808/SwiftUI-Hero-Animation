//
//  SnapCarousel.swift
//  SwiftUI-Hero-Animation-Practice (iOS)
//
//  Created by Sho Emoto on 2022/04/04.
//

import SwiftUI

// To for Accepting List
struct SnapCarousel<Content: View, T: Identifiable>: View {

    var content: (T) -> Content
    var list: [T]

    // Properties
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int

    init(
        spacing: CGFloat,
        trailingSpace: CGFloat,
        index: Binding<Int>,
        items: [T],
        content: @escaping (T) -> Content
    ) {

        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }

    var body: some View {

        GeometryReader { proxy in }
    }
}

struct SnapCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
