//
//  PlayerView.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 07/08/23.
//

import SwiftUI

struct PlayerView: View {
    @State private var isPlaying: Bool = false
    @State var title: String
    @State var artist: String
    @State var imageSong: String
    @State var album: String
    @State var duration: String
    @State var year: Int
    var body: some View {
        
        VStack{
            
            AsyncImage(url: URL(string: imageSong)) { image in
                image.resizable()
                
            } placeholder: {
                ProgressView()
            }.cornerRadius(20)
                .frame(width: 350,height: 350)
                .padding()
                

        
            VStack(alignment: .leading){
                
                HStack{
                    Text(album)
                        .font(.title)
                    Text("( \(year)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.leading,10)
                }
                HStack{
                    Text(artist)
                        .font(.subheadline)
                    //Spacer es para espacios muy grandes y poco configurable
                    Spacer()
                    Text(title)
                        .font(.subheadline)
                }
                
            }.padding()
           // Spacer()
            
            
            HStack(spacing: 50){
                Button {
                    //Lógica  del Barckward
                    //Clousers ***Funciones anónimas *** SwiftIU
                } label: {
                    Image(systemName: "backward.circle.fill")
                        //.resizable()
                        .scaleEffect(3)
                }
                Button {
                    //Lógica  de la Pausa
                    self.isPlaying.toggle() //Cambia el estado de una variable booleana
                    
                } label: {
                    Image(systemName:   self.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                       // .resizable()
                        .scaleEffect(4)
                }
                Button {
                    //Lógica  del Barckward
                    //Clousers ***Funciones anónimas *** SwiftIU
                } label: {
                    Image(systemName: "forward.circle.fill")
                 //       .resizable()
                        .scaleEffect(3)
                }

            }.padding()
            
            HStack{
                Text("0:00").padding()
                Spacer()
                Text(duration).padding()
            }
            
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
PlayerView(title: "Origins", artist: "Imagine Dragons", imageSong: "https://m.media-amazon.com/images/I/41WiaTk-OYL._AC_.jpg", album: "West Coast", duration: "4:02", year: 2014)

    }
}
