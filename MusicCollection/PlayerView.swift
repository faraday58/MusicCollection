//
//  PlayerView.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 07/08/23.
//

import SwiftUI

struct PlayerView: View {
    @State private var isPlaying: Bool = false
    var body: some View {
        
        VStack{
            Image("origins")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .scaledToFit()
                .padding()
            
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
                    Text("Imagine Dragons")
                        .font(.subheadline)
                    //Spacer es para espacios muy grandes y poco configurable
                    Spacer()
                    Text("Origins")
                        .font(.subheadline)
                }
                
            }.padding()
            Spacer()
            
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
