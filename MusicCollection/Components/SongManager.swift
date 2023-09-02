//
//  SongManager.swift
//  MusicCollection
//
//  Created by Armando Rodríguez on 01/09/23.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


class SongManager: ObservableObject {
    @Published private(set) var songs: [Song] = []
    
    let db = Firestore.firestore()
    
    init(){
        getSongs()
    }
    
    
    func getSongs()
    {
        db.collection("Songs").addSnapshotListener { snapshot, error in
            //1. Verificar si existe error
            guard let documents = snapshot?.documents else {
                print("Error al bajar documentos: \(String(describing: error)  )")
                return
            }
            
            //2. Llenar arreglo songs
            self.songs = documents.compactMap({ document -> Song?  in
                do{
                    return try document.data(as: Song.self)
                }catch let error {
                    print("ERROR al decodificar el documento \(error) ")
                    return nil
                }
            })
        }
    }
}
