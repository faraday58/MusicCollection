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
    
    let layout = [GridItem(.adaptive(minimum: 80, maximum: 120))]
    
    @StateObject var songManager = SongManager()
  
    
    var body: some View {
        TabView{
          /*  ScrollView(.horizontal){
                LazyHGrid(rows: layout){
                    ForEach(0..<1000){
                        Text("Item \($0)")
                    }
                }
            }*/
            List{
                ForEach(0..<100){
                    Text("Item \($0)")
                    
                    
                    ScrollView(.horizontal){
                        LazyHGrid(rows: layout){
                            ForEach(0..<100){
                                Text("Canción \($0)")
                            }
                        }
                    }
                }
            }
            
                .tabItem{
                    Image(systemName: "person.circle.fill")
                    Text("Artista")
                }
            NavigationView{
                List{
                    
                    ForEach(songManager.songs, id: \.name ) { song in
                        NavigationLink(destination: PlayerView(title: song.name, artist: song.artist, imageSong: song.albumImageURL, album: song.album, duration: song.duration, year: song.year)){
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
