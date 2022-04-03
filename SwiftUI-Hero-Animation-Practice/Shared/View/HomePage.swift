//
//  HomePage.swift
//  SwiftUI-Hero-Animation-Practice (iOS)
//
//  Created by Sho Emoto on 2022/04/03.
//

import SwiftUI

struct HomePage: View {

    // MARK: Animated View Properties
    @State var currentIndex: Int = 0

    var body: some View {

        ZStack {

            // BG
            BGView()
        }
    }

    // MARK: Blurred BG
    @ViewBuilder
    func BGView() -> some View {

        GeometryReader { proxy in

            let size = proxy.size

            TabView(selection: $currentIndex) {

                ForEach(movies.indices, id: \.self) { index in

                    Image(movies[index].artwork)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: size.height)
                        .clipped()
                        .tag(index)
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
