//
//  User.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 4/6/24.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullName: String
    var age: Int
    var profileImageUrls: [String]
}
