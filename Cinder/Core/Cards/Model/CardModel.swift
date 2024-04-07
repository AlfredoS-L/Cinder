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

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id }
}
