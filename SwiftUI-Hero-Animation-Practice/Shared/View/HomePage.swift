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

    // Environment Values
    @Environment(\.colorScheme) var scheme

    var body: some View {

        ZStack {

            // BG
            BGView()

            // MARK: Main View Content
            VStack {

                // Check out the Snap Carousel Video
                // https://youtu.be/GvKUmUA86WM
            }
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

            let color: Color = (scheme == .dark ? .black : .white)
            // Custom Gradient
            LinearGradient(
                colors: [
                    .black,
                    .clear,
                    color.opacity(0.15),
                    color.opacity(0.5),
                    color.opacity(0.8),
                    color,
                    color
                ],
                startPoint: .top,
                endPoint: .bottom
            )

            // Blurred Overlay
            Rectangle()
                .fill(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .preferredColorScheme(.dark)
    }
}
