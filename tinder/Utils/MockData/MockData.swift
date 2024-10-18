//
//  MockData.swift
//  tinder
//
//  Created by Harvir Brar on 14/10/2024.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Chow Chow",
            age: 4,
            profileImageURLs: ["chow","chow2","chow3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Suzy",
            age: 30,
            profileImageURLs: ["suzy","suzy2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Suzy",
            age: 30,
            profileImageURLs: ["suzy","suzy2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Suzy",
            age: 30,
            profileImageURLs: ["suzy","suzy2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Hoyeon",
            age: 30,
            profileImageURLs: ["ho","ho2","ho3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Garfield",
            age: 30,
            profileImageURLs: ["garfield","garfield2","garfield3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Suzy",
            age: 30,
            profileImageURLs: ["suzy","suzy2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "IU",
            age: 31,
            profileImageURLs: ["iu","iu2","iu3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Yoona",
            age: 34,
            profileImageURLs: ["yoona","yoona2","yoona3"]
        )
    ]
}
