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
    var body: some View {
        
        VStack{
            
            Image(imageSong)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .scaledToFit()
                .padding()
            VStack(alignment: .leading){
                
                HStack{
                    Text("West Coast")
                        .font(.title)
                    Text("(2018)")
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
                Text("4:02").padding()
            }
            
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(title: "Origins", artist: "Imagine Dragons", imageSong: "origins")
    }
}
