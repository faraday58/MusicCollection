//
//  Song.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 01/09/23.
//

import Foundation

struct Song: Identifiable {
    let id = UUID()
    var title: String
    var artist: String
    var imageFront: String
}
