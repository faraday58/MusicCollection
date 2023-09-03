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
            AsyncImage(url: URL(string: imageFront)) { image in
                image.resizable()
                    .scaledToFit()
                    
            } placeholder: {
                ProgressView()
                
            }.frame(width: 150,height: 150)
                .cornerRadius(20)
            
                
            VStack{
                
                Text(title)
                    .bold()
                    .font(.system(size: 15))
                Text(artist)
                    
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                
            }.padding()
           
            
        }.padding()
    }
}

struct ListSong_Previews: PreviewProvider {
    static var previews: some View {
        ListSong(title: "Origins", artist: "Imagine Dragons", imageFront: "https://m.media-amazon.com/images/I/41WiaTk-OYL._AC_.jpg"
)

    }
}
