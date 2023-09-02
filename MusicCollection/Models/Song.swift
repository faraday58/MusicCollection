//
//  Song.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 01/09/23.
//

import Foundation
/*
struct Song: Identifiable {
    let id = UUID()
    var title: String
    var artist: String
    var imageFront: String
}
*/

struct Song: Codable {
    
    var album: String
    var albumImageURL: String
    var artist: String
    var duration: String
    var name: String
    var year: Int
    
    init(album: String, albumImageURL: String, artist: String, duration: String, name: String, year: Int   )
    {
        self.album = album
        self.albumImageURL = albumImageURL
        self.artist =  artist
        self.duration = duration
        self.name = name
        self.year = year
        
    }
}


