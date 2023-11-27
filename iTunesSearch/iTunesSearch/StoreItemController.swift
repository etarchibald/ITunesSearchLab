//
//  StoreItemController.swift
//  iTunesSearch
//
//  Created by Ethan Archibald on 11/27/23.
//

import Foundation

class StoreItemController {
    
    func fetchItems(matching queryItems: [URLQueryItem]) async throws -> [StoreItem] {
        var urlComponents = URLComponents(string: "https://itunes.apple.com/search")!
        
        urlComponents.queryItems = queryItems
        
        print(urlComponents)
        
        let (data, _) = try await URLSession.shared.data(from: urlComponents.url!)
        let searchResponse = try JSONDecoder().decode(SearchResponse.self, from: data)
            
        return searchResponse.results
    }
    
}
