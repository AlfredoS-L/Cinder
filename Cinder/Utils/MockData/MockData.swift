//
//  MockData.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 4/7/24.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullName: "Alfredo S-L",
            age: 20,
            profileImageUrls: ["meOne", "paoBP"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Jessica Cheng",
            age: 21,
            profileImageUrls: ["jcOne","paoBP"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "ados",
            age: 2,
            profileImageUrls: ["partyCat","stryCat"]
        )
    ]
    
}
