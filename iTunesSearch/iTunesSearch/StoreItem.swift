//
//  StoreItem.swift
//  iTunesSearch
//
//  Created by Ethan Archibald on 11/27/23.
//

import Foundation

struct SearchResponse: Codable {
    let results: [StoreItem]
}

struct StoreItem: Codable {
    var name: String
    var artist: String
    var kind: String
//    var description: String
    var artworkURL: String
    
    enum CodingKeys: String, CodingKey {
        case name = "trackName"
        case artist = "artistName"
        case kind = "kind"
//        case description = "description"
        case artworkURL = "artworkUrl100"
    }
}
