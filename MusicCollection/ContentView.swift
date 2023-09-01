//
//  ContentView.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 07/08/23.
//

import SwiftUI



struct ContentView: View {
    private let songs: [Song] = [
        Song(title: "Origins", artist: "Imagine Dragons", imageFront:"origins"),
        Song(title: "Nightvisions", artist: "The Technicolors", imageFront:"nightvisions"),
        Song(title: "One more Light", artist: "LinkinPark", imageFront:"onemorelight")
    ]
    
    
    var body: some View {
        TabView{
            Text("Compendio de artistas")
                .tabItem{
                    Image(systemName: "person.circle.fill")
                    Text("Artista")
                }
            NavigationView{
                List{
                    
                    ForEach(songs) { song in
                        NavigationLink(destination: PlayerView()){
                            ListSong(title: song.title, artist: song.artist, imageFront: song.imageFront)
                            
                        }
                        
                    }
                    
                }
                
            }
                .tabItem {
                    Image(systemName: "music.note.list")
                   
                }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
