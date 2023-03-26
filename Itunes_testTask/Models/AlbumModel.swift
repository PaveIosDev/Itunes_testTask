//
//  AlbumModel.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 17.03.2023.
//

import Foundation

struct AlbumModel: Decodable, Equatable {
    
    let results: [Album]
    
    
}

struct Album: Decodable, Equatable {
    let artistName: String
    let collectionName: String
    let artworkUrl60: String?
    let trackCount: Int
    let releaseDate: String
    let collectionId: Int

}
