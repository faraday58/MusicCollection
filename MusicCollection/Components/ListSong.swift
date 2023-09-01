//
//  ListSong.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 31/08/23.
//

import SwiftUI

struct ListSong: View {
    
    @State var title: String
    @State var artist: String
    @State var imageFront: String
    
    
    var body: some View {
        HStack{
            Image(imageFront)
                .resizable()
                .clipShape(RoundedRectangle(
                    cornerRadius: 20
                ))
                .scaledToFit()
                .padding()
            VStack{
                
                Text(title)
                    .bold()
                    .font(.system(size: 22))
                Text(artist)
                    
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                
            }.padding()
           
            
        }.padding()
    }
}

struct ListSong_Previews: PreviewProvider {
    static var previews: some View {
        ListSong(title: "Origins", artist: "Imagine Dragons", imageFront: "origins")
    }
}
