//
//  SongsModel.swift
//  Itunes_testTask
//
//  Created by Павел Яковенко on 26.03.2023.
//

import Foundation

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
