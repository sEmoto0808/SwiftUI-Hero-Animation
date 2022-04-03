//
//  Movie.swift
//  SwiftUI-Hero-Animation-Practice (iOS)
//
//  Created by Sho Emoto on 2022/04/03.
//

import Foundation

// MARK: Movie Data Model and Sample Movie Data
struct Movie: Identifiable {

    let id = UUID().uuidString
    let title: String
    let artwork: String
}

let movies = [
    Movie(title: "kimi-no-na-ha", artwork: "kimi-no-na-ha"),
    Movie(title: "star-wars", artwork: "star-wars"),
    Movie(title: "007", artwork: "007"),
    Movie(title: "maleficent", artwork: "maleficent"),
    Movie(title: "tenki-no-ko", artwork: "tenki-no-ko"),
    Movie(title: "venom", artwork: "venom"),
    Movie(title: "les-miserables", artwork: "les-miserables"),
    Movie(title: "sing", artwork: "sing"),
    Movie(title: "attack-on-titan", artwork: "attack-on-titan")
]
