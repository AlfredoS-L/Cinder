//
//  CardService.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 4/7/24.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        
        return users.map({ CardModel(user: $0)})
    }
}
