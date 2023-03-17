//
//  AlbumModel.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 17.03.2023.
//

import Foundation

struct AlbumModel: Decodable {
    
    let results: [Album]
    
    
}

struct Album: Decodable {
    let artistName: String
    let collectionName: String
    let artworkUrl60: String
    let trackCount: Int
    let releaseDate: String
}
