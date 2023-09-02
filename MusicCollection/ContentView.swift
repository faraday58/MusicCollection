//
//  ContentView.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 07/08/23.
//

import SwiftUI



struct ContentView: View {
 /*
    private let songs: [Song] = [
        Song(title: "Origins", artist: "Imagine Dragons", imageFront:"origins"),
        Song(title: "Nightvisions", artist: "The Technicolors", imageFront:"nightvisions"),
        Song(title: "One more Light", artist: "LinkinPark", imageFront:"onemorelight")
    ]
   */
    
    @StateObject var songManager = SongManager()
  
    
    var body: some View {
        TabView{
            Text("Compendio de artistas")
                .tabItem{
                    Image(systemName: "person.circle.fill")
                    Text("Artista")
                }
            NavigationView{
                List{
                    
                    ForEach(songManager.songs, id: \.name ) { song in
                        NavigationLink(destination: PlayerView(title: song.name, artist: song.artist, imageSong: song.albumImageURL)){
                            ListSong(title: song.name, artist: song.artist, imageFront: song.albumImageURL)
                            
                        }
                        
                    }
                    
                }
                .navigationTitle("Canciones")
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
