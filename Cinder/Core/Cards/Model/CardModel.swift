//
//  CardModel.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 4/6/24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable {
    var id: String { return user.id }
}
