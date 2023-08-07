//
//  PlayerView.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 07/08/23.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
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
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
